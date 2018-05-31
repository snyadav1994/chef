package 'apt-transport-https'

apt_repository 'jenkins' do
    uri          'https://pkg.jenkins.io/debian-stable'
    distribution 'binary/'
    key          'https://pkg.jenkins.io/debian-stable/jenkins.io.key'
end

package 'jenkins' do
  
end

bash 'security-disable-jenkins' do 
  code <<-EOH
	sudo service jenkins start
	sudo service jenkins stop
	sudo sed -i "s/<useSecurity>true/<useSecurity>false/g" /var/lib/jenkins/config.xml
	sudo sed -i "s/<authorizationStrategy/<\!--authorizationStrategy/g" /var/lib/jenkins/config.xml
	sudo sed -i "s/securityRealm>/securityRealm-->/g" /var/lib/jenkins/config.xml
	sudo service jenkins start
  EOH
end
 
