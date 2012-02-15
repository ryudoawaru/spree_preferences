# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.name        = "spree_preferences"
  s.version     = version
  s.authors     = ["ryudoawaru"]
  s.email       = ["ryudoawaru@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Spree Preferences support general application configuration and preferences per model instance.}
  s.description = %q{TODO: Write a gem description}
	
	s.add_dependency 'rails', '>= 3.1.1', '<= 3.2.1'
  s.rubyforge_project = "spree_preferences"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", 'lib/preferences']

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
