# Matchi::Rspec

[![Version](https://img.shields.io/github/v/tag/fixrb/matchi-rspec?label=Version&logo=github)](https://github.com/fixrb/matchi-rspec/releases)
[![Yard documentation](https://img.shields.io/badge/Yard-documentation-blue.svg?logo=github)](https://rubydoc.info/github/fixrb/matchi-rspec/main)
[![CI](https://github.com/fixrb/matchi-rspec/workflows/CI/badge.svg?branch=main)](https://github.com/fixrb/matchi-rspec/actions?query=workflow%3Aci+branch%3Amain)
[![RuboCop](https://github.com/fixrb/matchi-rspec/workflows/RuboCop/badge.svg?branch=main)](https://github.com/fixrb/matchi-rspec/actions?query=workflow%3Arubocop+branch%3Amain)
[![License](https://img.shields.io/github/license/fixrb/matchi-rspec?label=License&logo=github)](https://github.com/fixrb/matchi-rspec/raw/main/LICENSE.md)

> Extend [Matchi](https://github.com/fixrb/matchi) matchers with some RSpec's ones.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "matchi-rspec"
```

And then execute:

```sh
bundle
```

Or install it yourself as:

```sh
gem install matchi-rspec
```

## Usage

To make __Matchi::Rspec__ available:

```ruby
require "matchi/rspec"
```

All examples here assume that this has been done.

### Built-in matchers

**Identity** matcher:

```ruby
be = Matchi::Matcher::Be.new(42)
be.matches? { 42 } # => true
```

**Type/class** matcher:

```ruby
be_instance_of = Matchi::Matcher::BeInstanceOf.new(String)
be_instance_of.matches? { "foo" } # => true
```

**Equivalence** matcher:

```ruby
eq = Matchi::Matcher::Eq.new("foo")
eq.matches? { "foo" } # => true
```

### Helper methods

For convenience, it is possible to instantiate a matcher with a method rather than with its class.
To do so, the `Helper` module can be included like this:

```ruby
require "matchi/helper"

class MatcherCollection
  include ::Matchi::Helper
end
```

The set of loaded matcher then becomes accessible via a dynamically generated instance method, like these:

```ruby
matcher = MatcherCollection.new
matcher.be(42).matches? { 44 } # => false
matcher.be_instance_of(String).matches? { "안녕하세요" } # => true
```

## Contact

* Home page: https://github.com/fixrb/matchi-rspec

## Versioning

__Matchi::Rspec__ follows [Semantic Versioning 2.0](https://semver.org/).

## License

The [gem](https://rubygems.org/gems/matchi-rspec) is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

***

<p>
  This project is sponsored by:<br />
  <a href="https://sashite.com/"><img
    src="https://github.com/fixrb/matchi-rspec/raw/main/img/sashite.png"
    alt="Sashite" /></a>
</p>
