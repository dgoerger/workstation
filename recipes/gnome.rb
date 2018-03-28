### installs and configures GNOME Desktop Environment

# configure basic desktop environment
include_recipe 'workstation::base'
include_recipe 'workstation::_gdm'

# desktop packages
include_recipe 'workstation::_browsers'
include_recipe 'workstation::_eclipse'
include_recipe 'workstation::_emacs'
include_recipe 'workstation::_git'
include_recipe 'workstation::_libreoffice'
include_recipe 'workstation::_polkit'
include_recipe 'workstation::_vim'


unless node['workstation']['gnome']['packages'].empty?
  node['workstation']['gnome']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
