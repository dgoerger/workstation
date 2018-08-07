### installs and configures sssd

package 'sssd' do
  action :install
end

package 'sssd-ldap' do
  action :install
end

package 'sssd-krb5' do
  action :install
end

package 'oddjob' do
  action :install
end

service 'oddjobd' do
  action [ :enable, :start ]
end

execute 'authselect' do
  command 'authselect select sssd with-mkhomedir --force'
  action :nothing
end

template '/etc/sssd/sssd.conf' do
  source 'sssd.conf.erb'
  owner 'root'
  group 'root'
  mode '0400'
  action :create
  notifies :run, 'execute[authselect]', :immediately
  not_if { node['workstation']['_sssd']['domain'].empty? || node['workstation']['_sssd']['kerberos_realm'].empty? || node['workstation']['_sssd']['kerberos_server'].empty? || node['workstation']['_sssd']['ldap_dc'].empty? || node['workstation']['_sssd']['ldap_server'].empty? }
end
