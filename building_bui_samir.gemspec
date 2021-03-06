
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "building_bui_samir/version"

Gem::Specification.new do |spec|
  spec.name          = "building_bui_samir"
  spec.version       = BuildingBuiSamir::VERSION
  spec.authors       = ["polyglotarist"]
  spec.email         = ["“majid.samir2@gmail.com”\ngit config --global user.email “majid.samir2@gmail.com"]

  spec.summary       = "this is a gem for class"
  spec.description   = "this is a gem to replace POROs in a buildings client to access the buildings api and wrap the data in a Building object"
  spec.homepage      = "https://github.com/polyglotarist/building_bui_samir"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/polyglotarist/building_bui_samir"
    spec.metadata["changelog_uri"] = "https://github.com/polyglotarist/building_bui_samir/CHANGELOG"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "http", "~> 4.0"
end
