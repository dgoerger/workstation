### installs various devel headers

unless node['workstation']['devel']['packages'].empty?
  node['workstation']['devel']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
