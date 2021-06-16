# frozen_string_literal: true

require "matchi/matcher/equal"

# Namespace for the Matchi library.
module Matchi
  # Collection of matcher classes.
  module Matcher
    # *Identity* matcher.
    #
    # @example
    #   equal = Matchi::Matcher::Equal.new(:foo)
    #   equal.matches? { :foo } # => true
    class Be < ::Matchi::Matcher::Equal
    end
  end
end
