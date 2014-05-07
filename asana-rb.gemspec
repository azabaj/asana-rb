# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asana/version'

Gem::Specification.new do |spec|
  spec.name          = "asana-rb"
  spec.version       = Asana::VERSION
  spec.authors       = ["azabaj"]
  spec.email         = ["feketeferenc@gmail.com"]
  spec.summary       = %q{Asana oAuth API wrapper}
  spec.description   = %q{Asana oAuth API wrapper, uses access_token to retrieve resources insted of API key.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
