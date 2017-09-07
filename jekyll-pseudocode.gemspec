# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jekyll-pseudocode/version"

Gem::Specification.new do |s|
  s.name        = "jekyll-pseudocode"
  s.version     = Jekyll::PseudoCode::VERSION
  s.authors     = ["Victor Bazterra"," Wiktor Macura"]
  s.email       = ["bazterra@gmail.com", "wmacura@gmail.com"]
  s.homepage    = "http://github.com/baites/jekyll-pseudocode"
  s.summary     = %q{A trivial jekyll plugin for pseudocode fork from jekyll-pseudo}
  s.description = %q{jekyll-pseudocode helps typeset pseudocode with minimal formatting}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency "jekyll"
end
