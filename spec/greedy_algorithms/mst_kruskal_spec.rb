# frozen_string_literal: true
require_relative '../../lib/greedy_algorithms/mst_kruskal'
require 'rspec'


RSpec.describe MstKruskal do
  describe 'kruskal_mst' do
    context 'when the graph has a single vertex' do
      let(:vertices) { [1] }
      let(:edges) { [] }
      let(:mst) { MstKruskal.new(vertices, edges) }

      it 'returns an empty MST' do
        expect(mst.kruskal_mst).to eq([])
      end
    end

    context 'when the graph has multiple edges forming a cycle' do
      let(:vertices) { [1,  2,  3,  4] }
      let(:edges) { [[1,  2,  1], [2,  3,  2], [3,  4,  3], [1,  4,  4], [4,  1,  5]] }
      let(:mst) { MstKruskal.new(vertices, edges) }

      it 'returns the MST without the cycle-forming edge' do
        expect(mst.kruskal_mst).to eq([[1,  2,  1], [2,  3,  2], [3,  4,  3]])
      end
    end

    context 'when the graph has a simple case' do
      let(:vertices) { [1,  2,  3,  4] }
      let(:edges) { [[1,  2,  1], [2,  3,  2], [3,  4,  3], [1,  4,  4]] }
      let(:mst) { MstKruskal.new(vertices, edges) }

      it 'returns the correct MST' do
        expect(mst.kruskal_mst).to eq([[1,  2,  1], [2,  3,  2], [3,  4,  3]])
      end
    end
  end
end

