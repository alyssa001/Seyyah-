lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "seyyah/version"

Gem::Specification.new do |spec|
  spec.name          = "seyyah"
  spec.version       = Seyyah::VERSION
  spec.authors       = ["alyssa001"]
  spec.email         = ["alyssa.yesilyurt@gmail.com"]

  spec.summary       = %q{Travel Info Gem}
  spec.description   = %q{Gives info about regions and countries}
  spec.homepage      = "https://github.com/alyssa001/Seyyah-"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "github.com/alyssa001/Seyyah-"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  #Dir.chdir(File.expand_path('..', __FILE__)) do
   # `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  #end

  spec.bindir = 'bin'
  #spec.executables = [“teach_me"]
  #spec.require_paths = [“lib”]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri"
end
