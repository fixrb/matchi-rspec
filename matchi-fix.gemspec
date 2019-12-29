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

  spec.add_dependency 'matchi', '~> 2.0.0'

  spec.add_development_dependency 'bundler',    '~> 2.1'
  spec.add_development_dependency 'rake',       '~> 13.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'simplecov',  '~> 0.17'
  spec.add_development_dependency 'yard',       '~> 0.9'
end
