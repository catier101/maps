# -*- encoding: utf-8 -*-
# stub: google-api-client 0.9.pre3 ruby lib generated

Gem::Specification.new do |s|
  s.name = "google-api-client"
  s.version = "0.9.pre3"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib", "generated"]
  s.authors = ["Steven Bazyl", "Tim Emiola", "Sergio Gomes", "Bob Aman"]
  s.date = "2015-07-31"
  s.email = ["sbazyl@google.com"]
  s.executables = ["generate-api"]
  s.files = ["bin/generate-api"]
  s.homepage = "https://github.com/google/google-api-ruby-client"
  s.licenses = ["Apache 2.0"]
  s.rubygems_version = "2.4.3"
  s.summary = "Client for accessing Google APIs"

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<representable>, ["~> 2.1"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.11"])
      s.add_runtime_dependency(%q<retriable>, ["~> 2.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.2"])
      s.add_runtime_dependency(%q<addressable>, ["~> 2.3"])
      s.add_runtime_dependency(%q<mime-types>, [">= 1.6"])
      s.add_runtime_dependency(%q<hurley>, ["~> 0.1"])
      s.add_runtime_dependency(%q<googleauth>, ["~> 0.2"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.19"])
      s.add_runtime_dependency(%q<memoist>, ["~> 0.11"])
    else
      s.add_dependency(%q<representable>, ["~> 2.1"])
      s.add_dependency(%q<multi_json>, ["~> 1.11"])
      s.add_dependency(%q<retriable>, ["~> 2.0"])
      s.add_dependency(%q<activesupport>, [">= 3.2"])
      s.add_dependency(%q<addressable>, ["~> 2.3"])
      s.add_dependency(%q<mime-types>, [">= 1.6"])
      s.add_dependency(%q<hurley>, ["~> 0.1"])
      s.add_dependency(%q<googleauth>, ["~> 0.2"])
      s.add_dependency(%q<thor>, ["~> 0.19"])
      s.add_dependency(%q<memoist>, ["~> 0.11"])
    end
  else
    s.add_dependency(%q<representable>, ["~> 2.1"])
    s.add_dependency(%q<multi_json>, ["~> 1.11"])
    s.add_dependency(%q<retriable>, ["~> 2.0"])
    s.add_dependency(%q<activesupport>, [">= 3.2"])
    s.add_dependency(%q<addressable>, ["~> 2.3"])
    s.add_dependency(%q<mime-types>, [">= 1.6"])
    s.add_dependency(%q<hurley>, ["~> 0.1"])
    s.add_dependency(%q<googleauth>, ["~> 0.2"])
    s.add_dependency(%q<thor>, ["~> 0.19"])
    s.add_dependency(%q<memoist>, ["~> 0.11"])
  end
end
