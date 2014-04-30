# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "devise-neo4j/version"

Gem::Specification.new do |s|
  s.name        = "devise-neo4j"
  s.version     = Devise::Neo4j::VERSION
  s.platform    = Gem::Platform::JAVA
  
  s.authors     = ["Ben Jackson", "Bobby Calderwood"]
  s.email       = ["ben@lissomsolutions.com"]
  s.homepage    = "http://github.com/benjackson/devise-neo4j"
  s.summary     = %q{Devise ORM for Neo4j}
  s.description = %q{Neo4j integration with the Devise authentication framework}

  s.rubyforge_project = "devise-neo4j"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency("warden")
  s.add_dependency("orm_adapter")
  s.add_dependency("bcrypt-ruby")
  s.add_dependency("railties")
  s.add_dependency("neo4j")
  s.add_dependency("devise")
end
