### installs and configures go

package 'golang' do
  action :install
end

package 'golang-docs' do
  action :install
end

package 'golang-godoc' do
  # document generation tool
  action :install
end
