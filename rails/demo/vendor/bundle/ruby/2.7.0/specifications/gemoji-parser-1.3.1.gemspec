# -*- encoding: utf-8 -*-
# stub: gemoji-parser 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "gemoji-parser".freeze
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Greg MacWilliam".freeze]
  s.date = "2015-04-06"
  s.description = "Expands GitHub Gemoji to parse emoji unicode characters, token strings, and emoticons.".freeze
  s.email = ["greg.macwilliam@voxmedia.com".freeze]
  s.homepage = "https://github.com/gmac/gemoji-parser".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new("> 1.9".freeze)
  s.rubygems_version = "3.1.6".freeze
  s.summary = "The missing helper methods for GitHub's Gemoji gem.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<gemoji>.freeze, [">= 2.1.0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
  else
    s.add_dependency(%q<gemoji>.freeze, [">= 2.1.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
