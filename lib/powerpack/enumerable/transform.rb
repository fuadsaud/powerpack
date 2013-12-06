unless Enumerable.method_defined? :transform
  module Enumerable
    # Returns a hash using the elements of self as keys and the result of the
    # given block as values.
    #
    # @return [Hash]
    #
    # @example
    #   [].transform # => {}
    #   { first_name: 'john',  last_name: 'doe' }.transform { |_key, value|
    #     value.capitalize
    #   }
    #
    #   # => { first_name: 'John', last_name: 'Doe' }
    #
    #
    def transform(&block)
      Hash[map { |e| [Array(e).first, yield(*e)] }]
    end
  end
end
