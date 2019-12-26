### installs and configures FOSS web browsers (firefox, chromium, lynx)

## chromium
package 'chromium' do
  action :install
end

cookbook_file '/etc/chromium/master_preferences' do
  # set default conf for new profiles
  source 'chromium.json'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end

cron 'patch_chromium' do
  time :daily
  user 'root'
  command '/usr/bin/yum upgrade chromium -y'
  action :create
end

## firefox
package 'firefox' do
  action :install
end

cookbook_file '/etc/firefox/pref/user.js' do
  # set default conf for new profiles
  source 'firefox.js'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end

cron 'patch_firefox' do
  time :daily
  user 'root'
  command '/usr/bin/yum upgrade firefox -y'
  action :create
end

## lynx
package 'lynx' do
  action :install
end

cookbook_file '/etc/lynx-site.cfg' do
  # set default conf for new profiles
  source 'lynx.cfg'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end
