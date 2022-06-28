# -*- encoding: utf-8 -*-
# stub: devise_sms_confirmable 0.1.22 ruby lib

Gem::Specification.new do |s|
  s.name = "devise_sms_confirmable".freeze
  s.version = "0.1.22"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["uuushiro".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-05-05"
  s.description = "Module provide sms confirmation.You can handle SMS Message template  as Devise handles ActionMailer template.".freeze
  s.email = ["yushiro.ma2ta2.21@gmail.com".freeze]
  s.homepage = "https://github.com/uuushiro/devise_sms_confirmable".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Module provide sms confirmation.You can handle SMS Message template  as Devise handles ActionMailer template.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<devise>.freeze, [">= 4.6.2"])
    s.add_runtime_dependency(%q<rails>.freeze, [">= 5.1.4"])
    s.add_runtime_dependency(%q<textris>.freeze, ["~> 0.7"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_development_dependency(%q<devise>.freeze, [">= 4.6.2"])
    s.add_development_dependency(%q<twilio-ruby>.freeze, [">= 0"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
  else
    s.add_dependency(%q<devise>.freeze, [">= 4.6.2"])
    s.add_dependency(%q<rails>.freeze, [">= 5.1.4"])
    s.add_dependency(%q<textris>.freeze, ["~> 0.7"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<devise>.freeze, [">= 4.6.2"])
    s.add_dependency(%q<twilio-ruby>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
  end
end
