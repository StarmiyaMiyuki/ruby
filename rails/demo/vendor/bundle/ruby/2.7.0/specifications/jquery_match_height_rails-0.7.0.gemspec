# -*- encoding: utf-8 -*-
# stub: jquery_match_height_rails 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jquery_match_height_rails".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ziyan Junaideen".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-07-22"
  s.description = "A responsive equal heights plugin for jQuery".freeze
  s.email = ["ziyan@jdeen.com".freeze]
  s.homepage = "https://github.com/jdeen/jquery_match_height_rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "A responsive equal heights plugin for jQuery".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
