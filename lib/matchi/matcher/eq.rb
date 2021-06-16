# frozen_string_literal: true

require "matchi/matcher/eql"

# Namespace for the Matchi library.
module Matchi
  # Collection of matcher classes.
  module Matcher
    # *Equivalence* matcher.
    #
    # @example
    #   eql = Matchi::Matcher::Eql.new("foo")
    #   eql.matches? { "foo" } # => true
    class Eq < ::Matchi::Matcher::Eql
    end
  end
end
