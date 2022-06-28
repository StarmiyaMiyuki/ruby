# -*- encoding: utf-8 -*-
# stub: textris 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "textris".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Visuality".freeze, "Karol S\u0142uszniak".freeze]
  s.date = "2019-05-20"
  s.description = "Implement texter classes for sending SMS messages in similar way to how e-mails are sent with ActionMailer-based mailers. Take advantage of e-mail proxying and enhanced phone number parsing, among others.".freeze
  s.email = "contact@visuality.pl".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "http://github.com/visualitypl/textris".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Simple SMS messaging gem for Rails based on concepts and conventions similar to ActionMailer, with some extra features.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.4"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1"])
    s.add_development_dependency(%q<rspec-sidekiq>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<scrutinizer-ocular>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.9"])
    s.add_development_dependency(%q<twilio-ruby>.freeze, ["~> 3.12"])
    s.add_development_dependency(%q<nexmo>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.1"])
    s.add_runtime_dependency(%q<actionmailer>.freeze, [">= 4.0"])
    s.add_runtime_dependency(%q<activejob>.freeze, [">= 4.2"])
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.2"])
    s.add_runtime_dependency(%q<phony>.freeze, ["~> 2.8"])
    s.add_runtime_dependency(%q<render_anywhere>.freeze, ["~> 0.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.4"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1"])
    s.add_dependency(%q<rspec-sidekiq>.freeze, ["~> 2.0"])
    s.add_dependency(%q<scrutinizer-ocular>.freeze, ["~> 1.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.9"])
    s.add_dependency(%q<twilio-ruby>.freeze, ["~> 3.12"])
    s.add_dependency(%q<nexmo>.freeze, ["~> 2.0"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.1"])
    s.add_dependency(%q<actionmailer>.freeze, [">= 4.0"])
    s.add_dependency(%q<activejob>.freeze, [">= 4.2"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4.2"])
    s.add_dependency(%q<phony>.freeze, ["~> 2.8"])
    s.add_dependency(%q<render_anywhere>.freeze, ["~> 0.0"])
  end
end
