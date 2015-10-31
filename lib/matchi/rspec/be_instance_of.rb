# Namespace for the Matchi library.
module Matchi
  # **Type/class** matcher.
  class BeInstanceOf
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
    # @yieldreturn [#instance_of?] the actual value to compare to the expected
    #   one.
    #
    # @return [Boolean] Comparison between actual and expected values.
    def matches?
      yield.instance_of?(@expected)
    end

    # Returns a string representing the matcher.
    #
    # @return [String] A string representing the matcher.
    def to_s
      "be_instance_of #{@expected.inspect}"
    end

    # Returns a hash of one key-value pair with a key corresponding to the
    #   matcher and a value corresponding to its initialize parameters.
    #
    # @return [Hash] A hash of one key-value pair.
    def to_h
      { BeInstanceOf: [@expected] }
    end
  end
end
