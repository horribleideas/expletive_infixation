# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'expletive_infixation/version'

Gem::Specification.new do |spec|
  spec.name          = "expletive_infixation"
  spec.version       = ExpletiveInfixation::VERSION
  spec.authors       = ["Kale Worsley"]
  spec.email         = ["kale@worsley.co.nz"]
  spec.summary       = %q{Adds expletive infixes to ruby method names.}
  spec.description   = %q{Adds expletive infixes to ruby method names. Abso-freakin'-lutely!}
  spec.homepage      = "https://github.com/horribleideas/expletive_infixation/fork"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
