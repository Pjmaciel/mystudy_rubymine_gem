class LinearSearch
  attr_accessor :choice_number, :number_list

  def valid_choice?
    choice_number.is_a?(Integer) && choice_number > 0
  end

  def searching
    return false unless valid_choice?

    number_list.each do |number|
      return true if number == choice_number
    end
    false
  end

  private

  attr_reader :choice_number, :number_list
end
