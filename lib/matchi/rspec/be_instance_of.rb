# frozen_string_literal: true

require 'matchi/matchers_base' unless defined?(::Matchi::MatchersBase)

# Namespace for the Matchi library.
module Matchi
  # Collection of matchers.
  module Matchers
    # **Type/class** matcher.
    module BeInstanceOf
      # The matcher.
      class Matcher
        include MatchersBase

        # Initialize the matcher with an object.
        #
        # @example A string matcher
        #   Matchi::BeInstanceOf.new(String)
        #
        # @param expected [#object_id] An expected class.
        def initialize(expected)
          @expected = expected
        end

        # @example Is it an instance of string?
        #   be_instance_of = Matchi::BeInstanceOf.new(String)
        #   be_instance_of.matches? { 'foo' } # => true
        #
        # @yieldreturn [#instance_of?] the actual value to compare to the
        #   expected one.
        #
        # @return [Boolean] Comparison between actual and expected values.
        def matches?
          yield.instance_of?(@expected)
        end
      end
    end
  end
end
