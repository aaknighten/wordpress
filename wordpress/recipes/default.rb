###############################
# Author : Alayshia Knighten
# Date : 09 - 27 - 17
# Installing WordPress
###############################


#initially updates all services and packages
execute 'yum update' do
  command 'yum update -y'
  action :run
end

 #installs mongodb 3.4
 yum_package 'php' do
   action :install
 end

 yum_package 'php-mysql' do
   action :install
 end

 yum_package 'mysql' do
   action :install
 end

 yum_package 'mysql-server' do
   action :install
 end

 yum_package 'mysql-devel' do
   action :install
 end

yum_package 'mysql-libs' do
   action :install
 end

yum_package 'httpd' do
   action :install
 end



# Bash script to Download WordPress, place it within the opt directory
bash 'WordPress Download' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  wget https://wordpress.org/latest.tar.gz
  tar -xvf latest.tar.gz -C /var/www/html
  EOH
end


 #starts the mysql db services and allows it to be chkconfig for start on reboot
 service 'mysqld' do
   supports status: true
   action [:enable, :start]
 end


#starts the mysql db services and allows it to be chkconfig for start on reboot
 service 'httpd' do
   supports status: true
   action [:enable, :start]
 end


#
# Cookbook:: wordpress
# Recipe:: default
#
# Copyright:: 2017, Alayshia Knighten, All Rights Reserved.

#
# Cookbook:: wordpress
# recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
