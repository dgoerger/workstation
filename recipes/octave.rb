### installs and configures GNU Octave

unless node['workstation']['octave']['packages'].empty?
  node['workstation']['octave']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
