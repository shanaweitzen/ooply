# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "genghisapp"
  s.version = "2.3.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Hileman"]
  s.date = "2013-07-29"
  s.description = "    Genghis is a single-file MongoDB admin app, made entirely out of awesome.\n"
  s.email = "justin@justinhileman.info"
  s.executables = ["genghisapp"]
  s.files = ["bin/genghisapp"]
  s.homepage = "http://genghisapp.com"
  s.require_paths = ["."]
  s.rubyforge_project = "genghisapp"
  s.rubygems_version = "2.0.2"
  s.summary = "The single-file MongoDB admin app"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<vegas>, ["~> 0.1.8"])
      s.add_runtime_dependency(%q<sinatra>, ["< 1.5.0", ">= 1.3.3"])
      s.add_runtime_dependency(%q<sinatra-contrib>, ["< 1.5.0", ">= 1.3.1"])
      s.add_runtime_dependency(%q<sinatra-mustache>, ["< 0.2.0", ">= 0.0.4"])
      s.add_runtime_dependency(%q<mongo>, ["<= 1.9.0", ">= 1.8.0"])
      s.add_runtime_dependency(%q<json>, ["< 1.9.0", ">= 1.7.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<active_support>, [">= 0"])
      s.add_development_dependency(%q<therubyracer>, [">= 0"])
      s.add_development_dependency(%q<less>, [">= 0"])
      s.add_development_dependency(%q<rainpress>, [">= 0"])
      s.add_development_dependency(%q<uglifier>, [">= 0"])
      s.add_development_dependency(%q<html_compressor>, [">= 0"])
    else
      s.add_dependency(%q<vegas>, ["~> 0.1.8"])
      s.add_dependency(%q<sinatra>, ["< 1.5.0", ">= 1.3.3"])
      s.add_dependency(%q<sinatra-contrib>, ["< 1.5.0", ">= 1.3.1"])
      s.add_dependency(%q<sinatra-mustache>, ["< 0.2.0", ">= 0.0.4"])
      s.add_dependency(%q<mongo>, ["<= 1.9.0", ">= 1.8.0"])
      s.add_dependency(%q<json>, ["< 1.9.0", ">= 1.7.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<active_support>, [">= 0"])
      s.add_dependency(%q<therubyracer>, [">= 0"])
      s.add_dependency(%q<less>, [">= 0"])
      s.add_dependency(%q<rainpress>, [">= 0"])
      s.add_dependency(%q<uglifier>, [">= 0"])
      s.add_dependency(%q<html_compressor>, [">= 0"])
    end
  else
    s.add_dependency(%q<vegas>, ["~> 0.1.8"])
    s.add_dependency(%q<sinatra>, ["< 1.5.0", ">= 1.3.3"])
    s.add_dependency(%q<sinatra-contrib>, ["< 1.5.0", ">= 1.3.1"])
    s.add_dependency(%q<sinatra-mustache>, ["< 0.2.0", ">= 0.0.4"])
    s.add_dependency(%q<mongo>, ["<= 1.9.0", ">= 1.8.0"])
    s.add_dependency(%q<json>, ["< 1.9.0", ">= 1.7.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<active_support>, [">= 0"])
    s.add_dependency(%q<therubyracer>, [">= 0"])
    s.add_dependency(%q<less>, [">= 0"])
    s.add_dependency(%q<rainpress>, [">= 0"])
    s.add_dependency(%q<uglifier>, [">= 0"])
    s.add_dependency(%q<html_compressor>, [">= 0"])
  end
end
