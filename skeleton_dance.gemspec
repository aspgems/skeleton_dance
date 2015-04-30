$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "skeleton_dance/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "skeleton_dance"
  s.version     = SkeletonDance::VERSION
  s.authors     = ["ASPGems"]
  s.email       = ["info@aspgems.com"]
  s.homepage    = "https://aspgems.com"
  s.summary     = "Dance with your html mockups"
  s.description = "Simple engine to render html from the assets pipeline"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.2.16"

  s.add_development_dependency "sqlite3"
end
