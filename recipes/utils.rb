### installs and configures commons shells

unless node['workstation']['utils']['packages'].empty?
  node['workstation']['utils']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
