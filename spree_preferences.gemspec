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
  s.description = %q{Spree Preferences support general application configuration and preferences per model instance.}
	
	s.add_dependency 'rails', '>= 3.1.1', '<= 3.2.1'
  s.rubyforge_project = "spree_preferences"

  s.require_paths = ["lib", 'lib/preferences']

end
