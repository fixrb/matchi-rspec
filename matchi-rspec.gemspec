# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name         = 'matchi-rspec'
  spec.version      = File.read('VERSION.semver').chomp
  spec.author       = 'Cyril Kato'
  spec.email        = 'contact@cyril.email'
  spec.summary      = 'Matchi extension gem to provide some RSpec matchers.'
  spec.description  = spec.summary
  spec.homepage     = 'https://github.com/fixrb/matchi-rspec'
  spec.license      = 'MIT'
  spec.files        = Dir['LICENSE.md', 'README.md', 'lib/**/*']
  spec.required_ruby_version = '>= 2.7.0'

  spec.add_dependency 'matchi', '~> 2.0.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-thread_safety'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'yard'
end
