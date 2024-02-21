# frozen_string_literal: true

class BubbleSort
  attr_accessor :list_numbers

  def initialize
    @list_numbers = []
  end
  def sort(list_numbers)
    raise ArgumentError, 'List contains non-numeric elements' unless list_numbers.all? { |n| n.is_a?(Numeric) }

    if list_numbers.empty?
      list_numbers.each_with_index do |number, number_index|
        compare_number = number

        (number_index + 1).upto(list_numbers.length - 1) do |current_number|
          current = number[current_number]

          if current < compare_number
            #Trocar os numeros se estiverem fora de ordem
            list_numbers[number_index], list_numbers[current_number] = current, compare_number
            compare_number = current
          end
        end
      end
    end
  end

  private

  attr_reader :list_numbers
end
