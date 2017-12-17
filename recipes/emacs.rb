### installs and configures emacs

package 'emacs-nox' do
  # cli
  action :install
end

package 'emacs' do
  # gui
  action :install
end

unless node['workstation']['emacs']['plugins'].empty?
  node['workstation']['emacs']['plugins'].each do |pkg|
    package pkg do
      action :install
    end
  end
end

# mg == OpenBSD's lightweight emacs-compatible editor
package 'mg' do
  action :install
end
