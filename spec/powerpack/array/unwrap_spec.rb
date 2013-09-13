require 'spec_helper'

shared_examples 'not single element array' do
  it 'returns self' do
    expect(subject.unwrap).to eq subject
  end
end

describe 'Array#unwrap' do
  context 'empty' do
    subject { [] }

    it_behaves_like 'not single element array'
  end

  context '1 element' do
    it 'returns the only element' do
      expect([1].unwrap).to eq 1
    end
  end

  context 'several elements' do
    subject { [1, 2, 3, 4, 5] }

    it_behaves_like 'not single element array'
  end
end
