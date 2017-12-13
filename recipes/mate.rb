### installs and configures MATE Desktop Environment

unless node['workstation']['mate']['packages'].empty?
  node['workstation']['mate']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
