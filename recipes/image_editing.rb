### installs and configures image editing software

unless node['workstation']['image_editor_packages'].empty?
  node['workstation']['image_editor_packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
