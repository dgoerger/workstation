### installs and configures database software

unless node['workstation']['database']['packages'].empty?
  node['workstation']['database']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
