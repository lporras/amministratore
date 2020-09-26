$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "amministratore/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "amministratore"
  spec.version     = Amministratore::VERSION
  spec.authors     = ["Luis Porras"]
  spec.email       = ["lporras16@gmail.com"]
  spec.homepage    = "https://github.com/lporras/amministratore"
  spec.summary     = "Amministratore is a Ruby on Rails framework for creating elegant backends for website administration."
  spec.description = "Amministratore is a Ruby on Rails framework for creating elegant backends for website administration."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.3"
  spec.add_dependency "react_on_rails", "~> 12"

  spec.add_development_dependency "sqlite3"
end
