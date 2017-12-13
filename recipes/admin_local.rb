### configures a local admin account in case NFS or central auth is down

directory '/var/home' do
  # put it in /var so it'll be mounted even if NFS /home fails
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'create_admin_local' do
  command "useradd -c \"#{node['workstation']['admin_local']['gecos']}\" -r -m -d /var/home/#{node['workstation']['admin_local']['username']} #{node['workstation']['admin_local']['username']}"
  not_if { File.exist?("/var/home/#{node['workstation']['admin_local']['username']}") }
end

directory "/var/home/#{node['workstation']['admin_local']['username']}/.ssh" do
  owner node['workstation']['admin_local']['username']
  group node['workstation']['admin_local']['username']
  mode '0700'
  action :create
  only_if { File.exist?("/var/home/#{node['workstation']['admin_local']['username']}") }
end

file "/var/home/#{node['workstation']['admin_local']['username']}/.ssh/authorized_keys" do
  # using file/content is fine for keys length ed25519
  content "#{node['workstation']['admin_local']['ssh_pubkey']}"
  owner node['workstation']['admin_local']['username']
  group node['workstation']['admin_local']['username']
  mode '0400'
  action :create
  only_if { File.exist?("/var/home/#{node['workstation']['admin_local']['username']}/.ssh") }
end

include_recipe 'workstation::sudo'
