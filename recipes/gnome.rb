### installs and configures GNOME Desktop Environment

include_recipe 'workstation::gdm'

unless node['workstation']['gnome']['packages'].empty?
  node['workstation']['gnome']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
