# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fonetica/version"

Gem::Specification.new do |s|
  s.name        = "fonetica"
  s.version     = Fonetica::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Gabriel Sobrinho", "Wenderson Malheiros"]
  s.email       = ["gabriel.sobrinho@gmail.com", "wmalheiros@gmail.com"]
  s.homepage    = "http://github.com/sobrinho/fonetica"
  s.summary     = %q{Phonetic finder for ActiveRecord using BUSCABR algorithm}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency(%q<activesupport>, [">= 3.0.0"])
  s.add_dependency(%q<i18n>, [">= 0.4.1"])
  s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
end
