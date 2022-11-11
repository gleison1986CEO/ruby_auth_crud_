# -*- encoding: utf-8 -*-
# stub: metro-ui-rails 0.15.8.15 ruby lib

Gem::Specification.new do |s|
  s.name = "metro-ui-rails".freeze
  s.version = "0.15.8.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vilius Luneckas".freeze]
  s.date = "2013-09-03"
  s.description = "metro-ui-rails project integrates Metro-UI CSS toolkit for Rails 3.1 Asset Pipeline".freeze
  s.email = ["vilius.luneckas@gmail.com".freeze]
  s.homepage = "https://github.com/viliusluneckas/metro-ui-rails".freeze
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Metro-UI CSS toolkit for Rails 3.1 Asset Pipeline".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<less-rails>.freeze, ["> 2.2.3"])
    s.add_development_dependency(%q<rails>.freeze, [">= 3.1"])
  else
    s.add_dependency(%q<less-rails>.freeze, ["> 2.2.3"])
    s.add_dependency(%q<rails>.freeze, [">= 3.1"])
  end
end
