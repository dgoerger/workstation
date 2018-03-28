### installs and configures gcc, clang, and related cross-compilers

unless node['workstation']['haskell']['packages'].empty?
  node['workstation']['haskell']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
