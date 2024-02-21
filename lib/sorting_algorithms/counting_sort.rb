# frozen_string_literal: true

class CountingSort
  attr_accessor :phrase

  def initialize
    @phrase = []
  end

  def sort(phrase)

    alphabet = ('a'..'z').to_a
    # mapeia cada letra do alfabeto para zero, pronto para ser usado para contar as ocorrências de cada letra em sua frase.
    letter_count =  Hash.new(0)
    alphabet.each { |letter| letter_count[letter] = 0 }

    phrase.chars.each do |char|
      lowercase_char = char.downcase
      if alphabet.include?(lowercase_char)
        letter_count[lowercase_char] += 1
      end
    end

    sorted_phrase = []
    letter_value = 0
    alphabet.each do |letter|
      if letter_count[letter] > letter_value
        letter_value = letter_count[letter]
        sorted_phrase << letter
      end
    end

    puts "The phrase has been sorted by occurrence count."
    return sorted_phrase
  end

end
