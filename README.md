# Matchi::Rspec

[![Build Status](https://travis-ci.org/fixrb/matchi-rspec.svg?branch=master)][travis]
[![Gem Version](https://badge.fury.io/rb/matchi-rspec.svg)][gem]
[![Inline docs](http://inch-ci.org/github/fixrb/matchi-rspec.svg?branch=master)][inchpages]
[![Documentation](http://img.shields.io/:yard-docs-38c800.svg)][rubydoc]

> Extend [Matchi](https://github.com/fixrb/matchi) matchers with some [RSpec](https://rspec.info/)'s ones.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'matchi-rspec'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install matchi-rspec

## Usage

**Identity** matcher:

```ruby
be = Matchi::Matcher::Be.new(42)
be.matches? { 42 } # => true
```

**Type/class** matcher:

```ruby
be_instance_of = Matchi::Matcher::BeInstanceOf.new(String)
be_instance_of.matches? { 'foo' } # => true
```

**Equivalence** matcher:

```ruby
eq = Matchi::Matcher::Eq.new('foo')
eq.matches? { 'foo' } # => true
```

## Contact

* Home page: https://github.com/fixrb/matchi-rspec
* Bugs/issues: https://github.com/fixrb/matchi-rspec/issues

## Rubies

* [MRI](https://www.ruby-lang.org/)
* [Rubinius](https://rubinius.com/)
* [JRuby](https://www.jruby.org/)

## Versioning

__Matchi::Rspec__ follows [Semantic Versioning 2.0](https://semver.org/).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

***

<p>
  This project is sponsored by:<br />
  <a href="https://sashite.com/"><img
    src="https://github.com/fixrb/matchi-rspec/raw/master/img/sashite.png"
    alt="Sashite" /></a>
</p>

[gem]: https://rubygems.org/gems/matchi-rspec
[travis]: https://travis-ci.org/fixrb/matchi-rspec
[inchpages]: http://inch-ci.org/github/fixrb/matchi-rspec
[rubydoc]: http://rubydoc.info/gems/matchi-rspec/frames
