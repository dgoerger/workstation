### installs and configures libreoffice

unless node['workstation']['libreoffice_packages'].empty?
  node['workstation']['libreoffice_packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
