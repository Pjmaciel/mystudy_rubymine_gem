# frozen_string_literal: true

require_relative '../../lib/greedy_algorithms/mst_prim'
require 'rspec'

RSpec.describe 'MstPrim' do
  let(:graph) {MstPrim.new(['A', 'B', 'C', 'D', 'E'])}

  context 'when the MST has adequate connectivity and minimum expected weight' do
    it 'checks whether the minimum tree contains all necessary edges and has minimum expected weight' do
      graph.add_edge('A', 'B', 2)
      graph.add_edge('A', 'C', 3)
      graph.add_edge('B', 'C', 1)
      graph.add_edge('B', 'D', 1)
      graph.add_edge('C', 'D', 2)
      graph.add_edge('C', 'E', 3)
      graph.add_edge('D', 'E', 1)
      mst = graph.prim_mst('A')

      # Checks whether the minimum tree contains all necessary edges
      expect(mst).to contain_exactly(['A', 'B', 2], ['B', 'C', 1], ['B', 'D', 1], ['D', 'E', 1])

      # Checks if the total weight of the tree is the minimum expected
      expected_weight = 2 + 1 + 1 + 1 # Soma dos pesos das arestas
      actual_weight = mst.map { |edge| edge[2] }.sum
      expect(actual_weight).to eq(expected_weight)
    end
    
    context 'when attempting to add an edge between vertices not present in the graph' do
      it 'raises an ArgumentError ' do
        expect { graph.add_edge('B', 'F', 1) }.to raise_error(ArgumentError, /Vertices B or F are not present in the graph/)
      end
    end
  end
end
