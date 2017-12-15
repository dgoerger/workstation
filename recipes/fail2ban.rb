### installs and configures fail2ban

package 'fail2ban-firewalld' do
  action :install
end

package 'fail2ban-systemd' do
  action :install
end

service 'fail2ban' do
  supports :restart => true
  action [ :enable, :start ]
end

template '/etc/fail2ban/jail.local' do
  source 'fail2ban_jail.erb'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
  notifies :restart, 'service[fail2ban]', :delayed
end
