# -*- encoding: utf-8 -*-
# stub: genericons-rails 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "genericons-rails".freeze
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Manuel van Rijn".freeze]
  s.date = "2014-08-22"
  s.description = "A small gem for putting genericons into the Rails asset pipeline".freeze
  s.email = ["manuel@manuelles.nl".freeze]
  s.homepage = "https://github.com/manuelvanrijn/genericons-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "an asset gemification of the genericons icon font library".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
