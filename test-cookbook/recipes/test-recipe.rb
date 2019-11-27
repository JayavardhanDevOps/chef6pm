#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

#file '/myfile' do
#      content "Hello Amma, Suvarna, Srinivas, SriGowri!!!
#               Good Morning Have a Great Weekend Ahead"
#      action :create
#end

#file '/robofile' do
#     content "This is to get attributes
#     HOSTNAME: #{node['hostname']}
#     IPADDRESS: #{node['ipaddress']}
#     CPU: #{node['cpu']['0']['mhz']}
#     MEMORY: #{node['memory']['total']}"
#     owner 'root'
#     group 'root'
#     action :create
#end

execute "run a script" do
  command <<-EOH
  mkdir /jayadir
  touch  /jayafile
  EOH
end

user 'raj' do
  action :create
end

group 'devops' do
 action :create
 members 'raj'
 append true
end

user 'suvarna'
