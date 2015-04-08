# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "slidemenu"
  spec.version       = Slidemenu::VERSION
  spec.authors       = ["Nathan Allen"]
  spec.email         = ["nallenanderson@gmail.com"]
  spec.summary       = %q{SIDR sidebar menus for Rails 4}
  spec.description   = %q{Make sidebar menus using SIDR for Rails 4.}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "railties", [">= 3", "< 5"]
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end