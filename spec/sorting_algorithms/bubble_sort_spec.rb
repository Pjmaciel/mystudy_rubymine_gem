# frozen_string_literal: true

require_relative '../../lib/sorting_algorithms/bubble_sort'
require 'rspec'

RSpec.describe 'BubbleSort' do
  let(:bubble_sort) { BubbleSort.new }

  context 'when the correct list is placed ' do
    it 'Ordenate list success' do
      list = [4, 3, 78, 2, 0, 2]
      bubble_sort.sort(list)
    end
  end

  context 'when the correct list is placed ' do
    it 'returns empty array' do
      list = []
      bubble_sort.sort(list)
    end
  end

  context 'when list contains non-numeric elements' do
    it 'raises an error' do
      list = [1, 2, 3, 'A', 5]
      expect { bubble_sort.sort(list) }.to raise_error(ArgumentError, 'List contains non-numeric elements')
    end
  end
end
