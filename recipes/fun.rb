### fun things

unless node['workstation']['fun_packages'].empty?
  node['workstation']['fun_packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end

include_recipe 'workstation::desktop_cleanup'
