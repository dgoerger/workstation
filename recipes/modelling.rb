### installs and configures 3D modelling software

unless node['workstation']['modelling']['packages'].empty?
  node['workstation']['modelling']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
