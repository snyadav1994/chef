# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html
#creating own resource named manageJenkins
resource_name :manageJenkins

action :install do
   package 'jenkins'

   service 'jenkins' do
         action [ :enable, :start]
    end
end



