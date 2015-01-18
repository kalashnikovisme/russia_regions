# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'russia_regions/version'

Gem::Specification.new do |spec|
  spec.name          = "russia_regions"
  spec.version       = RussiaRegions::VERSION
  spec.authors       = ["pavel"]
  spec.email         = ["kalashnikovisme@gmail.com"]
  spec.summary       = %q{Регионы Российской Федерации.}
  spec.description   = %q{Список субъектов Российской Федерации.}
  spec.homepage      = "https://github.com/kalashnikovisme/russia_regions"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'
  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.post_install_message = "Регионы Российской Федерации регулярно обновляются, изменения будут приходить в обновлениях гема."
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
