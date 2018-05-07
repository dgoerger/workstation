### installs and configures commons utils

unless node['workstation']['_utils-core']['packages'].empty?
  node['workstation']['_utils-core']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
