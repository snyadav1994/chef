# frozen_string_literal: true
# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Set a default name
default['example']['name'] = 'Sam Doe'
default['dotnetcore']['apt_package_source'] = 'wget -q packages-microsoft-prod.deb https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb'

default['dotnetcore']['package']['name'] = 'sudo dpkg -i packages-microsoft-prod.deb'

# For further information, see the Chef documentation (https://docs.chef.io/essentials_cookbook_attribute_files.html).
