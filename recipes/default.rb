#
# Cookbook Name:: login_users
# Recipe:: default
#
# Copyright 2014, Digital Advertising Consortium Inc.
#
# All rights reserved - Do Not Redistribute
#

ids = data_bag('users')

ids.each do |id|
  u = data_bag_item('users', id)
  user u['username'] do
    comment u['comment']
    uid u['uid']
    gid u['gid']
    home u['home']
    password u['password']
    supports :manage_home => true
    action [:create, :manage]
  end
  directory "/home/#{u['username']}/.ssh" do
    owner u['uid']
    group u['gid']
    mode 0700
    action :create
  end
  file "/home/#{u['username']}/.ssh/authorized_keys" do
    owner u['uid']
    group u['gid']
    mode  0600
    content u['ssh_keys']
    action :create_if_missing
  end
end
