# frozen_string_literal: true
# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef, #{node['example']['name']}!" do
  level :info
end

include_recipe 'example::java'
include_recipe 'example::dotnetcore'
include_recipe 'example::jenkins'
# For more information, see the documentation: https://docs.chef.io/recipes.html
