### installs and configures erlang deps

unless node['workstation']['erlang']['packages'].empty?
  node['workstation']['erlang']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
