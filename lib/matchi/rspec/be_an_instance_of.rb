require_relative 'be_instance_of'

# Namespace for the Matchi library.
module Matchi
  # **Type/class** matcher.
  class BeAnInstanceOf < BeInstanceOf
    # Returns a string representing the matcher.
    #
    # @return [String] A string representing the matcher.
    def to_s
      "be_an_instance_of #{@expected.inspect}"
    end

    # Returns a hash of one key-value pair with a key corresponding to the
    #   matcher and a value corresponding to its initialize parameters.
    #
    # @return [Hash] A hash of one key-value pair.
    def to_h
      { BeAnInstanceOf: [@expected] }
    end
  end
end
