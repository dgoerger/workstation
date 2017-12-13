### installs and configures a Professional Audio Workstation

include_recipe 'workstation::zoo_repo'

unless node['workstation']['audio_editing']['packages'].empty?
  node['workstation']['audio_editing']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end

include_recipe 'workstation::jackd'
