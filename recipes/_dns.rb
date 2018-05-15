### installs and configures unbound and dnssec-trigger

package unbound do
  action :install
end

service 'NetworkManager' do
  supports :reload => true
  action :nothing
end

template '/etc/NetworkManager/NetworkManager.conf' do
  source 'NetworkManager.conf.erb'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
  notifies :reload, 'service[NetworkManager]', :delayed
end

template '/etc/unbound/unbound.conf' do
  source 'unbound.conf.erb'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
  notifies :restart, 'service[dnssec-triggerd]', :delayed
end

# dnsblock - blackhole bad stuff
execute 'dnsblock_initialize' do
  command '/usr/local/sbin/dnsblock'
  action :nothing
end

cookbook_file '/usr/local/sbin/dnsblock' do
  source 'dnsblock.sh'
  owner 'root'
  group 'root'
  mode '0554'
  action :create
  notifies :run, 'execute[dnsblock_initialize]', :delayed
end

cron 'dnsblock_update' do
  time :weekly
  user 'root'
  command '/usr/local/sbin/dnsblock'
  action :create
end
