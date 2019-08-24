class Anagram < ApplicationRecord

  def is_anagram(word_test_one, word_test_two)
    word_analisys = Anagram.create(word_one: word_test_one, word_two: word_test_two)
    word_one_nospace = word_analisys.word_one.delete(" ").downcase.chars.sort.join unless !word_analisys.word_one # palavra 1
    word_two_nospace = word_analisys.word_two.delete(" ").downcase.chars.sort.join unless !word_analisys.word_two # palavra 2
    
    if !word_one_nospace.blank? && !word_two_nospace.blank? && word_one_nospace && word_two_nospace && word_one_nospace == word_two_nospace
      puts "É um anagrama"
    elsif word_analisys.word_one == " " && word_analisys.word_two == " "
      puts "Palavra em branco, não há como ser analisado"
    elsif !word_analisys.word_one && !word_analisys.word_two
      puts "Palavra nula, não há como ser analisado"
    else
      puts "Não é um anagrama"
    end
  end

end
