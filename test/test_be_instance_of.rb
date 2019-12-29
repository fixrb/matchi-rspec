# frozen_string_literal: true

require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'matchi', 'rspec'

expected = String
matcher = Matchi::Matcher::BeInstanceOf.new(expected)

# It returns the symbol
raise unless matcher.class.to_sym == :be_instance_of

# It is expected to be true
raise unless matcher.matches? { 'foo' }

# It is expected to be false
raise if matcher.matches? { :BOOM }

# It returns this string
raise unless matcher.to_s == 'be_instance_of String'

# It returns this representation
raise unless matcher.inspect == 'Matchi::Matcher::BeInstanceOf(String)'

# It returns an expected given value
raise unless matcher.expected == expected
