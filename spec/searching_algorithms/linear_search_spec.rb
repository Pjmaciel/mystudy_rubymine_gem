# frozen_string_literal: true
require 'rspec'
require 'ffaker'
require_relative  '../../lib/searching_algorithms/linear_search'


RSpec.describe LinearSearch do
  let(:linear_search) { LinearSearch.new }

  context 'when searching for an existing element' do
    it 'returns true' do
      linear_search.choice_number = FFaker::Random.rand(1..9)
      linear_search.number_list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(linear_search.searching).to eq(true)
    end
  end

  context 'when searching for a non-existing element' do
    it 'returns false' do
      linear_search.choice_number = 10
      linear_search.number_list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(linear_search.searching).to eq(false)
    end
  end

  context 'When non of a number' do
    it 'should returns false' do
      linear_search.choice_number = nil
      linear_search.number_list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(linear_search.searching).to eq(false)
    end
  end

  context 'When the input negative number' do
    it 'should ' do
      linear_search.choice_number = -5
      linear_search.number_list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(linear_search.searching).to eq(false)
    end
  end
end
