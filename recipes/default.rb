#
# Cookbook:: node_sample
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

#imports
include_recipe 'nodejs'
include_recipe 'apt'

#npm installs
# nodejs_npm 'pm2'

#packages apt-get
apt_update
# package 'nginx' do
#   action :install
# end
package 'nginx'
package 'npm'

nodejs_npm 'pm2'

#services

service 'enable nginx' do
  action :enable
end
#
# service 'start nginx' do
#   action :start
# end




# package 'nodejs' do
#   node.default['nodejs']['install_method'] = 'binary'
#   node.default['nodejs']['version'] = '5.9.0'
#   node.default['nodejs']['binary']['checksum'] = '99c4136cf61761fac5ac57f80544140a3793b63e00a65d4a0e528c9db328bf40'
# end
