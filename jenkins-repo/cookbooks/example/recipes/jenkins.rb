package 'apt-transport-https'

apt_repository 'jenkins' do
    uri          'https://pkg.jenkins.io/debian-stable'
    distribution 'binary/'
    key          'https://pkg.jenkins.io/debian-stable/jenkins.io.key'
end

package 'jenkins' do
  
end

service 'jenkins' do
  action :start
end
 
bash 'security-bypass' do 
code <<-EOH
  git clone https://github.com/apandey9524/jenkins-config.git
  cd jenkins-config
  cp -f config.xml /var/lib/jenkins
  sudo service jenkins restart
  jenkinspublicip=$(curl ipinfo.io/ip)
  sudo curl -X POST -v -o -  -d "" http://"$jenkinspublicip":8080/setupWizard/completeInstall
EOH
end
