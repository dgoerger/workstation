### installs and configures Xvnc for remote desktop access

package 'tigervnc-server' do
  action :install
end

package 'xinetd' do
  action :install
end

service 'xinetd' do
  supports :restart => true
  action [ :enable, :start ]
end

cookbook_file '/etc/gdm/custom.conf' do
  # NB: enabling xdmcp doesn't take effect until reboot
  source 'gdm_custom.conf'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end

cookbook_file '/etc/xinetd.d/xvncserver' do
  source 'xinetd_xvncserver'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
  notifies :restart, 'service[xinetd]', :delayed
end
