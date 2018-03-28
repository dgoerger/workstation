### installs and configures java

unless node['workstation']['java']['packages'].empty?
  node['workstation']['java']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
