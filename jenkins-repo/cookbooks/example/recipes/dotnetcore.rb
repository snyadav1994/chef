package 'apt-transport-https'


bash 'install-dotnetcore' do 
 code <<-EOH
	wget -q packages-microsoft-prod.deb https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
	sudo dpkg -i packages-microsoft-prod.deb
	sudo apt-get update
	sudo apt-get install dotnet-sdk-2.1 -y
  EOH
end
