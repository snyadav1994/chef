#
# Cookbook:: sneha-jenkins
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved

#installing java 
execute node['sneha-jenkins']['execute']['name'] do
 command node['sneha-jenkins']['execute']['command']
end


#template for jenkins package
template node['sneha-jenkins']['template']['path'] do
  source node['sneha-jenkins']['template']['source']
  owner node['sneha-jenkins']['template']['owner']
  group node['sneha-jenkins']['template']['group'] 
end



#using customized resource
manageJenkins 'install' do
  action :install
end
#starting and enabling jenkins service 
service 'jenkins' do
 action [ :enable, :start]
end
