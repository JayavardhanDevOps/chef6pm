#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
   content 'Hello Jandhyala Family Members!!!
            How are you all doing...
            Take Care Bye See You Guys Soon
            Guntur' 
   action :create
end

service 'httpd' do
   action [:enable,:start]
end

%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
  action :install
  end
end
