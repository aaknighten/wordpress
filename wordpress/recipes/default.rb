###############################
# Author : Alayshia Knighten
# Date : 09 - 27 - 17
# Installing WordPress
###############################

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

execute 'create php template' do
  command 'cp /var/www/html/wordpress/wp-config-sample.php /tmp/wp-config.php'
  action :run
end


# Cookbook:: wordpress
# Recipe:: default
#
# Copyright:: 2017, Alayshia Knighten, All Rights Reserved.
