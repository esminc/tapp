# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tapp/version"

Gem::Specification.new do |s|
  s.name        = "tapp"
  s.version     = Tapp::VERSION
  s.authors     = ["Keita Urashima"]
  s.email       = ["ursm@ursm.jp"]
  s.homepage    = "http://github.com/esminc/tapp"
  s.summary     = %q{tap { pp self }}
  s.description = %q{tap { pp self }}
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'thor'

  s.add_development_dependency 'turnip'
end
