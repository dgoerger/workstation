### installs and configures emacs

package 'eclipse-platform' do
  action :install
end

unless node['workstation']['eclipse']['plugins'].empty?
  node['workstation']['eclipse']['plugins'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
