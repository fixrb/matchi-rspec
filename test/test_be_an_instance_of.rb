require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'matchi', 'rspec'

matcher = Matchi::Matchers::BeAnInstanceOf::Matcher.new(String)

# It is expected to be true
raise unless matcher.matches? { 'foo' }

# It is expected to be false
raise if matcher.matches? { 4 }

# It returns this string
puts matcher.to_s
raise unless matcher.to_s == 'be_an_instance_of String'

# It returns this hash
raise unless matcher.to_h == { BeAnInstanceOf: [String] }
