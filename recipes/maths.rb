### installs and configures commons shells

unless node['workstation']['maths']['packages'].empty?
  node['workstation']['maths']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
