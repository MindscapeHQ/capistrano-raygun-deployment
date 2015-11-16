# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'my_app_name'
set :repo_url, 'git@github.com:MindscapeHQ/capistrano-raygun-deployment.git'
set :deploy_to, '/var/www/my_app_name'
set :raygun_deployment_environments, [:production]