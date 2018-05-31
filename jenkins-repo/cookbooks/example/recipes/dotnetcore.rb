apt_repository 'dotnetdev' do
    uri node['dotnetcore']['apt_package_source']
    key "#{node['dotnetcore']['apt_package_source']}/dists/#{node['lsb']        ['codename']}/Release.gpg"
end



bash 'install-dotnetcore' do 
 code <<-EOH
	
	sudo apt-get update
	sudo apt-get install dotnet-sdk-2.1
  EOH
end
