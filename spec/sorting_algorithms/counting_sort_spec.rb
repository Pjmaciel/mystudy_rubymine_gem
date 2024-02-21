require_relative '../../lib/sorting_algorithms/counting_sort'
require 'rspec'
require 'ffaker'

RSpec.describe 'CountingSort' do
  let(:sorted_letter) { CountingSort.new }

  context 'when the sentence is passed correctly' do
    it 'returns sorted letters and prints a success message' do
      lorem_text = FFaker::Lorem.words(26).join(' ')
      expect { sorted_letter.sort(lorem_text) }.to output("The phrase has been sorted by occurrence count.\n").to_stdout
    end
  end

  context 'when the letters are in uppercase' do
    it 'returns sorted letters and prints a success message' do
      uppercase_text = FFaker::Lorem.words(26).join(' ').upcase
      expect { sorted_letter.sort(uppercase_text) }.to output("The phrase has been sorted by occurrence count.\n").to_stdout
    end
  end

  context 'when the sentence is empty' do
    it 'returns an empty array' do
      expect(sorted_letter.sort('')).to eq([])
    end
  end

end
