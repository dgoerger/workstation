# Cookbook Name:: workstation
# Recipe:: base

# Usage
#
#   workstation::base installs a basic Linux workstation,
#     without graphical dependencies (default runlevel 3).
#   If you need a graphical environment, please run rather
#     e.g. workstation::gnome or workstation::mate, which
#     include this file and set the proper runlevel etc.

### software installation
## additional repos - FOSS-only
include_recipe 'workstation::_repo'
## Free and Open Source Software
include_recipe 'workstation::_c'
include_recipe 'workstation::_crypto_policy'
include_recipe 'workstation::_cups' unless node['workstation']['cups']['server'].empty?
include_recipe 'workstation::_dns'
include_recipe 'workstation::_fail2ban'
include_recipe 'workstation::_firewalld'
include_recipe 'workstation::_motd'
include_recipe 'workstation::_msmtp' unless node['workstation']['_msmtp']['smarthost'].empty? || node['workstation']['_msmtp']['port'].empty? || node['workstation']['_msmtp']['domain'].empty?
include_recipe 'workstation::_nfs' unless node['workstation']['_nfs']['mounts'].empty?
include_recipe 'workstation::_nrpe' unless node['workstation']['_nrpe']['allowed_hosts'].empty?
include_recipe 'workstation::_openssh'
include_recipe 'workstation::_rsyslog'
include_recipe 'workstation::_sssd'
include_recipe 'workstation::_shell'
include_recipe 'workstation::_tuned'
include_recipe 'workstation::_utils-core'

## proprietary software
include_recipe 'workstation::_chef' # this is mostly open source but is not in the repos


### administrativa
include_recipe 'workstation::_admin_local' unless node['workstation']['admin_local']['gecos'].empty? || node['workstation']['admin_local']['username'].empty? || node['workstation']['admin_local']['privileges'].empty?
include_recipe 'workstation::_patching'
include_recipe 'workstation::_sudo'
include_recipe 'workstation::_symlinks'
