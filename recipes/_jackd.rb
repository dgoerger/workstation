### installs and configures JACKd audio server

unless node['workstation']['_jackd']['packages'].empty?
  node['workstation']['_jackd']['packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end

cookbook_file '/etc/security/limits.conf' do
  source 'jackd_limits.conf'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end
