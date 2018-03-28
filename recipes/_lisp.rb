### installs and configures lisp

unless node['workstation']['lisp']['packages'].empty?
  node['workstation']['lisp']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
