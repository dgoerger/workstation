# Cookbook Name:: workstation
# Recipe:: langs

# Usage
#
#   workstation::langs installs additional programming language
#     support, without graphical dependencies (default runlevel
#     3).

include_recipe 'workstation::base'
include_recipe 'workstation::_coq'
include_recipe 'workstation::_erlang'
include_recipe 'workstation::_go'
include_recipe 'workstation::_haskell'
include_recipe 'workstation::_java'
include_recipe 'workstation::_julia'
include_recipe 'workstation::_lisp'
include_recipe 'workstation::_mathematica' unless node['workstation']['_mathematica']['pkg_url'].empty? || node['workstation']['_mathematica']['server'].empty? || node['workstation']['_mathematica']['sha256'].empty?
include_recipe 'workstation::_matlab' unless node['workstation']['_matlab']['pkg_url'].empty? || node['workstation']['_matlab']['file_installation_key'].empty? || node['workstation']['_matlab']['network_lic'].empty?
include_recipe 'workstation::_octave'
include_recipe 'workstation::_python'
include_recipe 'workstation::_r'
include_recipe 'workstation::_racket'
include_recipe 'workstation::_ruby'
include_recipe 'workstation::_rust'
include_recipe 'workstation::_sagemath'
