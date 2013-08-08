# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sinatra-mustache"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason Campbell", "Beat Richartz"]
  s.date = "2013-03-27"
  s.description = "Use Mustache in your Sinatra app without the extra view classes"
  s.email = ["attraccessor@gmail.com"]
  s.homepage = "http://github.com/beatrichartz/sinatra-mustache"
  s.require_paths = ["lib"]
  s.rubyforge_project = "sinatra-mustache"
  s.rubygems_version = "2.0.2"
  s.summary = "Use Mustache in your Sinatra app without the extra view classes"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, ["~> 1"])
      s.add_runtime_dependency(%q<mustache>, ["~> 0.99"])
      s.add_runtime_dependency(%q<tilt>, ["~> 1.2", "~> 1.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2"])
      s.add_development_dependency(%q<rack-test>, ["~> 0"])
    else
      s.add_dependency(%q<sinatra>, ["~> 1"])
      s.add_dependency(%q<mustache>, ["~> 0.99"])
      s.add_dependency(%q<tilt>, ["~> 1.2", "~> 1.3"])
      s.add_dependency(%q<rspec>, ["~> 2"])
      s.add_dependency(%q<rack-test>, ["~> 0"])
    end
  else
    s.add_dependency(%q<sinatra>, ["~> 1"])
    s.add_dependency(%q<mustache>, ["~> 0.99"])
    s.add_dependency(%q<tilt>, ["~> 1.2", "~> 1.3"])
    s.add_dependency(%q<rspec>, ["~> 2"])
    s.add_dependency(%q<rack-test>, ["~> 0"])
  end
end
