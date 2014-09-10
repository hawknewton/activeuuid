# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "activeuuid/version"

Gem::Specification.new do |s|
  s.name        = "activeuuid"
  s.version     = Activeuuid::VERSION
  s.authors     = ["Nate Murray"]
  s.email       = ["nate@natemurray.com"]
  s.homepage    = "https://github.com/jashmenn/activeuuid"
  s.summary     = %q{This version has been modified to support MySQL under JDBC.  See https://github.roving.com/hnewton/activeuuid.}
  s.description = %q{This version has been modified to support MySQL under JDBC.  See https://github.roving.com/hnewton/activeuuid.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~> 2.99.0"
  s.add_development_dependency "rspec-its"
  s.add_development_dependency "activesupport"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "forgery"
  s.add_development_dependency "fabrication"

  if RUBY_PLATFORM == 'java'
    s.add_development_dependency "activerecord-jdbcmysql-adapter"
  else
    s.add_development_dependency "mysql2"
    s.add_development_dependency "pg"
    s.add_development_dependency "sqlite3"
  end

  s.add_runtime_dependency "uuidtools"
  s.add_runtime_dependency "activerecord", '>= 3.1'
end
