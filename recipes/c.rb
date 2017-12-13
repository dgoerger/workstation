### installs and configures gcc, clang, and related cross-compilers

unless node['workstation']['c']['packages'].empty?
  node['workstation']['c']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
