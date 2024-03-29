# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Question/simple_expec/version'

Gem::Specification.new do |spec|
  spec.name          = "Question-simple_expec"
  spec.version       = Question::SimpleExpec::VERSION
  spec.authors       = ["Juan Ignacio Hita Manso y Gabriel García Ventura"]
  spec.email         = ["alu0100713213@ull.edu.es"]
  spec.description   = %q{TODO: Practica 7 de Lenguajes y Paradigmas de la programacion}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~>2.11'
end
