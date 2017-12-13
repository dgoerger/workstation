### installs Workstation-specific packages

execute 'enable_workstation_repo' do
  command 'dnf copr enable dgoerger/workstation -y'
  action :run
  not_if { File.exist?('/etc/yum.repos.d/_copr_dgoerger-workstation.repo') }
end
