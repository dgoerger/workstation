### installs and configures unbound and dnssec-trigger

package 'unbound' do
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

directory '/usr/local/etc/unbound' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'initialize_blocklist' do
  command 'touch /usr/local/etc/unbound/blocklist.conf'
  action :nothing
end

template '/etc/unbound/unbound.conf' do
  source 'unbound.conf.erb'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
  notifies :run, 'execute[initialize_blocklist]', :immediately
  notifies :restart, 'service[unbound]', :delayed
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

service 'unbound' do
  supports :restart => true
  action [ :enable, :start ]
end

template '/etc/unbound/unbound.conf' do
  source 'unbound.conf.erb'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
  notifies :restart, 'service[unbound]', :delayed
end


cron 'dnsblock_update' do
  time :weekly
  user 'root'
  command '/usr/local/sbin/dnsblock'
  action :create
end
