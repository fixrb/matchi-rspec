Gem::Specification.new do |spec|
  spec.name          = 'matchi-rspec'
  spec.version       = File.read('VERSION.semver').chomp
  spec.authors       = ['Cyril Wack']
  spec.email         = ['contact@cyril.email']

  spec.summary       = "Extend Matchi matchers with some RSpec's ones."
  spec.description   = 'Matchi extension gem to provide some RSpec matchers.'
  spec.homepage      = 'https://github.com/fixrb/matchi-rspec'
  spec.license       = 'MIT'

  spec.files         =
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'matchi',                 '~> 1.0.1'

  spec.add_development_dependency 'bundler',    '~> 1.10'
  spec.add_development_dependency 'rake',       '~> 10.4'
  spec.add_development_dependency 'yard',       '~> 0.8'
  spec.add_development_dependency 'simplecov',  '~> 0.10'
  spec.add_development_dependency 'rubocop',    '~> 0.35'

  spec.cert_chain   = ['certs/gem-fixrb-public_cert.pem']
  private_key       = File.expand_path('~/.ssh/gem-fixrb-private_key.pem')
  spec.signing_key  = private_key if File.exist?(private_key)
end
