package 'apt-transport-https'

apt_repository 'jenkins' do
    uri          'https://pkg.jenkins.io/debian-stable'
    distribution 'binary/'
    key          'https://pkg.jenkins.io/debian-stable/jenkins.io.key'
end

package 'jenkins' do
not_if { ::Dir.exist?('/var/lib/jenkins') }  
end

bash 'start-jenkins' do 
  code <<-EOH
	sudo service jenkins start
  EOH
end
 
#if File.exist?('/var/lib/jenkins/secrets/initialAdminPassword')
#  password = ::File.read('/var/lib/jenkins/secrets/initialAdminPassword')
