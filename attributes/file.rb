#defining attributes for java
default['sneha-jenkins']['execute']['name'] = "install java"
default['sneha-jenkins']['execute']['command'] = "yum install java-1.8.0-openjdk"


#defining attributes for jenkins installation
default['sneha-jenkins']['template']['path'] = "/etc/yum.repos.d/jenkins.repo"
default['sneha-jenkins']['template']['source'] = "jenkins.repository.erb"
default['sneha-jenkins']['template']['owner'] = "root"
default['sneha-jenkins']['template']['group'] = "root"
