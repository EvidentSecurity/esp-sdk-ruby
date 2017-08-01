# -*- encoding: utf-8 -*-
#
=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

$:.push File.expand_path("../lib", __FILE__)
require "esp_sdk/version"

Gem::Specification.new do |s|
  s.name        = "esp_sdk"
  s.version     = ESP::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Evident.io"]
  s.email       = ["support@evident.io"]
  s.homepage    = "https://github.com/EvidentSecurity/esp-sdk-ruby"
  s.summary     = "Ruby SDK for interacting with the ESP API."
  s.description = "Ruby SDK for interacting with the ESP API."
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.0.0"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 1.8', '>= 1.8.3'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'factory_girl'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
