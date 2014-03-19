# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lightcore/version'

Gem::Specification.new do |spec|
  spec.name          = "lightcore"
  spec.version       = Lightcore::VERSION
  spec.authors       = ["Andrew Kane", "Nick Elser"]
  spec.email         = ["andrew@chartkick.com"]
  spec.summary       = %q{Lightweight Ruby core extensions}
  spec.description   = %q{Lightweight Ruby core extensions}
  spec.homepage      = "https://github.com/ankane/lightcore"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
