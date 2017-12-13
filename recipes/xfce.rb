### installs and configures the XFCE Desktop Environment

unless node['workstation']['xfce']['packages'].empty?
  node['workstation']['xfce']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
