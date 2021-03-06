# frozen_string_literal: true

require_relative File.join "support", "coverage"
require_relative File.join "..", "lib", "matchi", "rspec"

expected = "foo"
matcher = Matchi::Matcher::Eq.new(expected)

# It returns the symbol
raise unless matcher.class.to_sym == :eq

# It is expected to be true
raise unless matcher.matches? { "foo" }

# It is expected to be false
raise if matcher.matches? { "bar" }

# It returns this string
raise unless matcher.to_s == 'eq "foo"'

# It returns this representation
raise unless matcher.inspect == 'Matchi::Matcher::Eq("foo")'

# It returns an expected given value
raise unless matcher.expected == expected
