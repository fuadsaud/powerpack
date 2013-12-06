unless Hash.method_defined? :map_values
  class Hash
    # Maps over the hash yielding the key-value pairs. The result of yielding
    # is used as the value for the giving key in the returned hash.
    #
    # @return [Hash]
    #
    # @example
    #   {}.map_values # => {}
    #
    #   { first_name: 'john',  last_name: 'doe' }.map_values { |_key, value|
    #     value.capitalize
    #   }
    #
    #   # => { first_name: 'John', last_name: 'Doe' }
    #
    #
    def map_values(&block)
      Hash[map { |e| [e.first, yield(*e)] }]
    end
  end
end
