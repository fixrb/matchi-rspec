# frozen_string_literal: true

require "matchi/matcher/base"

# Namespace for the Matchi library.
module Matchi
  # Collection of matcher classes.
  module Matcher
    # **Type/class** matcher.
    class BeInstanceOf < ::Matchi::Matcher::Base
      # Initialize the matcher with an object.
      #
      # @example A string matcher
      #   Matchi::Matcher::BeInstanceOf.new(String)
      #
      # @param expected [#object_id] An expected class.
      def initialize(expected)
        super()
        @expected = expected
      end

      # @example Is it an instance of string?
      #   be_instance_of = Matchi::Matcher::BeInstanceOf.new(String)
      #   be_instance_of.matches? { 'foo' } # => true
      #
      # @yieldreturn [#class] the actual value to compare to the expected one.
      #
      # @return [Boolean] Comparison between actual and expected values.
      def matches?
        expected.equal?(yield.class)
      end
    end
  end
end
