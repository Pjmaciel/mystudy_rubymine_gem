# frozen_string_literal: true

class BinarySearch
  attr_accessor :list_numbers, :choice_number

  def initialize
    @list_numbers = []
    @choice_number = nil
  end

  def searching(choice_number, list_numbers)

    list_numbers_sorted = list_numbers.sort
    first_index = 0
    last_index = list_numbers_sorted .length - 1

    while first_index <= last_index
      mid_index = (first_index + last_index) / 2

      if list_numbers_sorted[mid_index] == choice_number
        puts "#{choice_number} foi encontrado na lista"
        return mid_index
      elsif list_numbers_sorted[mid_index] < choice_number
        first_index = mid_index + 1
      else
        last_index = mid_index - 1
      end
    end
    -1
  end
end
