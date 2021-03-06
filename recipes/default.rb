#
# Cookbook Name:: lockdown-ssh
# Recipe:: default
#
# Copyright 2012, Luke Randall

include_recipe "openssh::default"

template "sshd_config" do
  path "#{node[:sshd][:config_dir]}/sshd_config"
  source "sshd_config.erb"
  owner "root"
  group "root"
  mode "0644"

  notifies :restart, "service[ssh]"
end
