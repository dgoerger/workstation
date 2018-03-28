### installs and configures powertop

package 'powertop' do
  action :install
end

service 'powertop' do
  # NB: you probably don't want to enable this if you have USB peripherals that could get powered off
  action :disable
end
