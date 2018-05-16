### installs and configures commons utils

unless node['workstation']['_utils-core']['packages'].empty?
  node['workstation']['_utils-core']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end

cookbook_file '/etc/vimrc' do
  # better global - permits site-specific conf
  source 'vimrc'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end
cookbook_file '/etc/vimrc.local' do
  # site-specific conf
  source 'vimrc.local'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end
