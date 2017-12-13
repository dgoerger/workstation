### installs and configures a Professional Audio Workstation

unless node['workstation']['audio_editing']['packages'].empty?
  node['workstation']['audio_editing']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end

include_recipe 'workstation::jackd'
