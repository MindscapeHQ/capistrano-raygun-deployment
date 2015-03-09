Gem::Specification.new do |gem|

  gem.name = "capistrano-raygun-deployment"
  gem.summary = "Capistrano Raygun Deployment"
  gem.description = "A capistrano task to notify Raygun.io of a deployment"
  gem.homepage = "http://github.com/MindscapeHQ/capistrano-raygun-deployment"
  gem.authors = ["Jamie Penney", "Raygun.io"]
  gem.email = "hello@raygun.io"
  gem.license = "MIT"

  gem.version = File.read "VERSION"
  gem.platform = Gem::Platform::RUBY

  gem.files = Dir["{lib}/**/*", "README.md", "LICENSE", "VERSION"]
  gem.require_path = "lib"

end