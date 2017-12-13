### installs Workstation-specific packages

execute 'enable_workstation_repo' do
  command 'dnf copr enable dgoerger/off-cycle -y'
  action :run
  not_if { File.exist?('/etc/yum.repos.d/_copr_dgoerger-off-cycle.repo') }
end
