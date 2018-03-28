### installs and configures rust

unless node['workstation']['rust']['packages'].empty?
  node['workstation']['rust']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
