#
# Cookbook Name:: lockdown-ssh
# Recipe:: default
#
# Copyright 2012, Luke Randall

template "sshd_config" do
  path "#{node[:sshd][:config_dir]}/sshd_config"
  source "sshd_config.erb"
  owner "root"
  group "root"
  mode "0644"
end
