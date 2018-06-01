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
 
