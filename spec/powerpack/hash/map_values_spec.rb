require 'spec_helper'

describe 'Hash#map_values' do
  context 'empty hash' do
    it 'resolves to an empty hash' do
      expect({}.map_values).to eql({})
    end
  end

  context 'populated hash' do
    it "maps over the hash's key-value pairs returning a new hash indexed by the original keys" do
      expect({ 1 => 'one', 2 => 'two', 3 => 'three' }.map_values { |i, name|
        "#{ i } is #{ name }"
      } ).to eql(
        1 => '1 is one',
        2 => '2 is two',
        3 => '3 is three')
    end
  end
end
