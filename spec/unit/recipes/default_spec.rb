#
# Cookbook:: node_sample
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'node_sample::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install nginx' do
      expect(chef_run).to install_package 'nginx'
    end

    it 'installs nodejs service from a recipe' do
      expect(chef_run).to install_package 'nodejs'
    end

    it 'should install pm2 via nmp' do
      expect(chef_run).to install_nodejs_npm 'pm2'
    end

    it 'should create a proxy.conf template in /etc/nginx/site-avaliable' do
      expect(chef_run).to create_template '/etc/nginx/site-avaliable/proxy.conf'

    end
    # it 'should import apt' do
    #   expect(chef_run).to install_package 'apt'
    # end
  end

  # context 'When all attributes are default, on CentOS 7' do
  #   # for a complete list of available platforms and versions see:
  #   # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
  #   platform 'centos', '7'
  #
  #   it 'converges successfully' do
  #     expect { chef_run }.to_not raise_error
  #   end
  # end
end
