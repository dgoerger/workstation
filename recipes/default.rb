# Cookbook Name:: workstation
# Recipe:: default

### software installation
## Free and Open Source Software
#include_recipe 'workstation::atom' # no build for f27?
include_recipe 'workstation::audio_editing'
include_recipe 'workstation::browsers'
include_recipe 'workstation::c'
include_recipe 'workstation::coq'
include_recipe 'workstation::cups' unless node['workstation']['cups_server'].empty?
include_recipe 'workstation::database'
include_recipe 'workstation::debuginfo'
include_recipe 'workstation::devel'
include_recipe 'workstation::dns'
include_recipe 'workstation::eclipse'
include_recipe 'workstation::emacs'
include_recipe 'workstation::erlang'
include_recipe 'workstation::fail2ban'
include_recipe 'workstation::firejail'
include_recipe 'workstation::firewalld'
include_recipe 'workstation::fun'
include_recipe 'workstation::gdm'
include_recipe 'workstation::git'
include_recipe 'workstation::gnome'
include_recipe 'workstation::go'
include_recipe 'workstation::haskell'
include_recipe 'workstation::image_editing'
include_recipe 'workstation::java'
include_recipe 'workstation::julia'
include_recipe 'workstation::libreoffice'
include_recipe 'workstation::libvirt'
include_recipe 'workstation::lisp'
include_recipe 'workstation::mate'
include_recipe 'workstation::modelling'
include_recipe 'workstation::motd'
include_recipe 'workstation::msmtp' unless node['workstation']['msmtp']['smarthost'].empty? || node['workstation']['msmtp']['port'].empty? || node['workstation']['msmtp']['domain'].empty?
include_recipe 'workstation::nfs' unless node['workstation']['nfs_mounts'].empty?
include_recipe 'workstation::nrpe' unless node['workstation']['nrpe']['allowed_hosts'].empty?
include_recipe 'workstation::octave'
include_recipe 'workstation::openbox'
include_recipe 'workstation::openssh'
include_recipe 'workstation::passwd' unless node['workstation']['sssd']['kerberos_server'].empty?
include_recipe 'workstation::perl'
include_recipe 'workstation::polkit'
include_recipe 'workstation::powertop'
include_recipe 'workstation::python'
include_recipe 'workstation::r'
include_recipe 'workstation::racket'
include_recipe 'workstation::robotics'
include_recipe 'workstation::rsyslog'
include_recipe 'workstation::ruby'
include_recipe 'workstation::rust'
include_recipe 'workstation::sagemath'
include_recipe 'workstation::security'
include_recipe 'workstation::sssd'
include_recipe 'workstation::shell'
include_recipe 'workstation::texlive'
include_recipe 'workstation::tuned'
include_recipe 'workstation::utils'
include_recipe 'workstation::video_editing'
include_recipe 'workstation::vim'
include_recipe 'workstation::xfce'
include_recipe 'workstation::xvnc'

## proprietary software
include_recipe 'workstation::chef' # this is mostly open source but is not in the repos
include_recipe 'workstation::fastx' unless node['workstation']['fastx']['pkg_url'].empty? || node['workstation']['fastx']['server'].empty?
include_recipe 'workstation::filebeats' unless node['workstation']['filebeats']['hosts'].empty?
include_recipe 'workstation::google_chrome' if node['workstation']['google_chrome']['install']
include_recipe 'workstation::mathematica' unless node['workstation']['mathematica']['pkg_url'].empty? || node['workstation']['mathematica']['server'].empty? || node['workstation']['mathematica']['sha256'].empty?
include_recipe 'workstation::matlab' unless node['workstation']['matlab']['pkg_url'].empty? || node['workstation']['matlab']['file_installation_key'].empty? || node['workstation']['matlab']['network_lic'].empty?


### administrativa
include_recipe 'workstation::admin_local' unless node['workstation']['admin_local']['gecos'].empty? || node['workstation']['admin_local']['username'].empty? || node['workstation']['admin_local']['privileges'].empty?
include_recipe 'workstation::patching'
include_recipe 'workstation::sudo'
include_recipe 'workstation::symlinks'
