### installs and configures gcc, clang, and related cross-compilers

unless node['workstation']['_c']['packages'].empty?
  node['workstation']['_c']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
