# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap-switch-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap-switch-rails"
  spec.version       = Bootstrap::Switch::Rails::VERSION
  spec.authors       = ["Manuel van Rijn"]
  spec.email         = ["manuel@manuelvanrijn.nl"]
  spec.description   = %q{A small gem for putting bootstrap-switch into the Rails asset pipeline}
  spec.summary       = %q{an asset gemification of the bootstrap-switch plugin}
  spec.homepage      = "https://github.com/manuelvanrijn/bootstrap-switch-rails"
  spec.license       = "MIT, Apache License v2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
