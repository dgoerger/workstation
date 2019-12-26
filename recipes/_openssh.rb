### installs and configures OpenSSH

package 'openssh-server' do
  action :install
end

service 'sshd' do
  supports :restart => true
  action [ :enable, :start ]
end

template '/etc/ssh/sshd_config' do
  source 'sshd_config.erb'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
  notifies :restart, 'service[sshd]', :delayed
  verify '/usr/sbin/sshd -t -f %{path}'
end

template '/etc/pam.d/sshd' do
  source 'duo_pam_sshd'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
  not_if { node['workstation']['_duo']['api_host'].empty? || node['workstation']['_duo']['ikey'].empty? │| node['workstation']['_duo']['skey'].empty? }
  # TODO: is there a verify command for PAM?
end

cron 'patch_openssh' do
  time :daily
  user 'root'
  command '/usr/bin/yum upgrade mosh openssh -y'
  action :create
end

include_recipe 'workstation::_duo' unless node['workstation']['_duo']['api_host'].empty? || node['workstation']['_duo']['ikey'].empty? || node['workstation']['_duo']['skey'].empty?
