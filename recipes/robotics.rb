### installs and configures software for robotics research

unless node['workstation']['robotics']['packages'].empty?
  node['workstation']['robotics']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
