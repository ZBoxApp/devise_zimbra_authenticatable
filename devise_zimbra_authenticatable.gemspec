# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise_zimbra_authenticatable/version'

Gem::Specification.new do |spec|
  spec.name          = "devise_zimbra_authenticatable"
  spec.version       = DeviseZimbraAuthenticatable::VERSION
  spec.authors       = ["Patricio Bruna"]
  spec.email         = ["pbruna@zboxapp.com"]
  spec.summary       = "Devise extension to allow authentication via LDAP"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/ZBoxApp/devise_zimbra_authenticatable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  s.add_dependency('devise', '>= 3.0')
  s.add_dependency 'zimbra'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
