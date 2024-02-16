# frozen_string_literal: true

# Classe para realizar uma busca linear em uma lista de números.
class LinearSearch
  attr_accessor :choice_number, :number_list

  # Inicializa a classe com o número a ser procurado e a lista de números.
  #
  # @param choice_number [Integer] O número a ser procurado na lista.
  # @param number_list [Array<Integer>] A lista de números onde será realizada a busca.
  def initialize
    @choice_number = nil
    @number_list = []
  end

  # Realiza uma busca linear na lista de números para verificar se o número está presente.
  #
  # @return [Boolean] Retorna true se o número estiver presente na lista, caso contrário, false.
  def searching
    found = false
    number_list.each do |number|
      if number == choice_number
        found = true
        break
      end
    end

    found
  end
end
