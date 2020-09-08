# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'idecoder/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "idecoder"
  spec.version       = Idecoder::Rails::VERSION
  spec.authors       = ["Michel Popolin"]
  spec.email         = ["micpopolin@gmail.com"]
  spec.summary       = %q{This creates code editor to use in your project. }
  spec.description   = %q{Now you can easily put an editor inside your project. With environment variables reader and autocompletes. }
  spec.homepage      = "https://github.com/popolin/idecoder"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,app}/**/*"] + ["MIT-LICENSE", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  # spec.add_dependency "railties", "> 3.1"
end
