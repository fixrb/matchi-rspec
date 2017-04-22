require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'matchi', 'rspec'

matcher = Matchi::Matchers::Eq::Matcher.new('foo')

# It is expected to be true
raise unless matcher.matches? { 'foo' }

# It is expected to be false
raise if matcher.matches? { 4 }

# It returns this string
raise unless matcher.to_s == 'eq "foo"'

# It returns this hash
raise unless matcher.to_h == { Eq: ['foo'] }
