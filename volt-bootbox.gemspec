# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
puts ">>>> lib=#{lib}"
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'volt/bootbox/version'

Gem::Specification.new do |spec|
  spec.name          = "volt-bootbox"
  spec.version       = Volt::Bootbox::VERSION
  spec.authors       = ["Colin Gunn"]
  spec.email         = ["colgunn@icloud.com"]
  spec.summary       = %q{Volt wrapper for Opal-Bootbox which in turn wraps Bootbox Javascript library.}
  spec.description   = %q{Volt wrapper for Opal-Bootbox which in turn wraps Bootbox Javascript library.}
  spec.homepage      = "https://github.com/balmoral/volt-bootbox"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.1'
  spec.add_dependency 'opal-bootbox', '~> 0.1.0'

  # spec.add_runtime_dependency "volt", "~> 0.9.5.pre3"
  # spec.add_development_dependency 'rspec', '~> 3.2.0'
  # spec.add_development_dependency "rake"
end
