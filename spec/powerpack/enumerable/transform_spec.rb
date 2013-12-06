require 'spec_helper'

describe 'Enumerable#transform' do
  context 'empty collection' do
    it 'evaluates to an empty hash' do
      expect([].transform).to eql({})
    end
  end

  context 'populated array' do
    it 'counts the number of ocurrences and returns a hash in the form value => count' do
      expect([1, 2, 3, 4, 5].transform { |i| i ** 2 }).to eql(
        1 => 1,
        2 => 4,
        3 => 9,
        4 => 16,
        5 => 25
      )
    end
  end

  context 'populated hash' do
    it 'returns a hash mapping from original hash''s keys to block''s return value' do
      expect({ 1 => 'one', 2 => 'two', 3 => 'three' }.transform { |i, name|
        "#{ i } is #{ name }"
      } ).to eql(
        1 => '1 is one',
        2 => '2 is two',
        3 => '3 is three')
    end
  end
end
