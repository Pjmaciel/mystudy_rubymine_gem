# frozen_string_literal: true
require 'rspec'
require_relative  '../../lib/searching_algorithms/linear_search'

RSpec.describe LinearSearch do
  let(:linear_search) { LinearSearch.new }

  context 'when searching for an existing element' do
    it 'returns true' do
      linear_search.choice_number = 3
      linear_search.number_list = [1, 2, 3, 4, 5]
      expect(linear_search.searching).to eq(true)
    end
  end

  context 'when searching for a non-existing element' do
    it 'returns false' do
      linear_search.choice_number = 10
      linear_search.number_list = [1, 2, 3, 4, 5]
      expect(linear_search.searching).to eq(false)
    end
  end
end
