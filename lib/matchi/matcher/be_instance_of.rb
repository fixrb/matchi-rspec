# frozen_string_literal: true

require 'matchi/matcher/base'

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
        @expected = expected
      end

      # @todo For security reasons, instead of comparing actual with expected,
      #   we should compare expected with actual.  Using something such as:
      #   `expected.class_of?(actual)`.
      #
      # @example Is it an instance of string?
      #   be_instance_of = Matchi::Matcher::BeInstanceOf.new(String)
      #   be_instance_of.matches? { 'foo' } # => true
      #
      # @yieldreturn [#instance_of?] the actual value to compare to the
      #   expected one.
      #
      # @return [Boolean] Comparison between actual and expected values.
      def matches?
        yield.instance_of?(expected)
      end
    end
  end
end
