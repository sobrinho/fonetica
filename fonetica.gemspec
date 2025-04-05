# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fonetica/version"

Gem::Specification.new do |s|
  s.name        = "fonetica"
  s.version     = Fonetica::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Gabriel Sobrinho"]
  s.email       = ["gabriel.sobrinho@gmail.com"]
  s.homepage    = "https://github.com/sobrinho/fonetica"
  s.summary     = %q{BuscaBR algorithm which allow the comparison of brazilian words based on their phonetic likeness}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'activesupport', '>= 3.0.0'
  s.add_dependency 'i18n', '>= 0.4.1'
  s.add_development_dependency 'rake', '>= 0.8.7'
  s.add_development_dependency 'test-unit', '>= 2.0.0'
end
