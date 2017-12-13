### installs and configures software for security research

unless node['workstation']['security']['packages'].empty?
  node['workstation']['security']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
