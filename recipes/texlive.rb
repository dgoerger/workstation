### installs and configures TeX Live

unless node['workstation']['texlive']['packages'].empty?
  node['workstation']['texlive']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
