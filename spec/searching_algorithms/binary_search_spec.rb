# frozen_string_literal: true
require_relative '../../lib/searching_algorithms/binary_search'
require 'rspec'

RSpec.describe 'BinarySearch' do
  let(:binary_search) { BinarySearch.new }

  context 'when the number exists in the list'  do
    it 'returns the index of the existing number' do
      list_numbers = [1, 2, 3, 4, 5, 6, 9]
      choice = 3
      # O número 3 está na posição de índice 2
      expect(binary_search.searching(choice, list_numbers)).to eq(2)
    end
  end

  context 'when the number does not exist in the list' do
    it 'returns -1' do
      list_numbers = [1, 2, 3, 4, 5, 6, 9]
      choice = 10
      expect(binary_search.searching(choice, list_numbers)).to eq(-1)
    end
  end
end
