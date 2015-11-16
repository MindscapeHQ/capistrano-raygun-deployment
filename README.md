# capistrano-raygun-deployment

Capistrano Raygun Deployment makes it easy to notify Raygun of your deployments using a capistrano task.

## Installation

First, install the gem:

    gem install capistrano-raygun-deployment

Or if you are using Bundler, add it to your `Gemfile`:

    echo "gem 'capistrano-raygun-deployment'" >> Gemfile
    bundle install

Then, add the following to your `Capfile`:

    require 'capistrano/raygun-deployment'

Finally, add this configuration to your config:

    set :raygun_api_key, "YOUR_APPLICATIONS_API_KEY"
    set :raygun_auth_token, "YOUR_EXTERNAL_AUTH_TOKEN"
    set :raygun_release_path, "releases/LATEST" #optional, defaults to RELEASE
    set :use_git, false #optional, for if you don't want to send a git hash with your deployment
    # optional, set to the list of environments you want to create deployments for
    set :raygun_deployment_environments, [:production]

You'll need the Raygun API Key for your application, plus an External Auth Token which you can generate [here](https://app.raygun.io/user).

Finally, create a release file. We default to checking `RELEASE`, but you can change this by setting `:raygun_release_path`
This is an example release file:

    version: 6.0.0
    ownerName: Jamie Penney
    emailAddress: jamie@example.com
    notes: |
        # Testing out the capistrano plugin

        * More markdown formatting

        ### Jamie

Once you've written this to `RELEASE`, you can deploy with `cap deploy` and your deployment will be sent to Raygun!

# Changelog
* **1.2.0**: Add :raygun_deployment_environments config, to specify the list of environments you want to create deployments for.
* **1.1.0**: Use `after deploy:finished` instead of `after :published` so that deployments are only pushed to Raygun when things 
fully succeed.
* **1.0.0**: Initial release.
