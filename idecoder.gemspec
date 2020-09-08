require_relative 'lib/idecoder/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "idecoder"
  spec.version       = Idecoder::VERSION
  spec.authors       = ["michel popolin"]
  spec.email         = ["micpopolin@gmail.com"]

  spec.summary       = %q{This creates code editor to use in your project.}
  spec.description   = %q{Now you can easily put an editor inside your project. With environment variables reader and autocompletes.}
  spec.homepage      = "https://github.com/popolin/idecoder"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
