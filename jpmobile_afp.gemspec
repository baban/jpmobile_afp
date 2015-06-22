# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jpmobile_afp/version'

Gem::Specification.new do |spec|
  spec.name          = "jpmobile_afp"
  spec.version       = JpmobileAfp::VERSION
  spec.authors       = ["baban"]
  spec.email         = ["babanba.n@gmail.com"]
  spec.summary       = %q{jpmobile extention for android future phone(aka. ガラホ)}
  spec.description   = %q{jpmobile extention for android future phone(aka. ガラホ)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
