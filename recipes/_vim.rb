### installs and configures Vim and Neovim

# Vim
package 'vim-X11' do
  # gui vim
  action :install
end

unless node['workstation']['vim']['plugins'].empty?
  # all the plugins
  node['workstation']['vim']['plugins'].each do |pkg|
    package pkg do
      action :install
    end
  end
end

# Neovim
package 'neovim' do
  action :install
end
