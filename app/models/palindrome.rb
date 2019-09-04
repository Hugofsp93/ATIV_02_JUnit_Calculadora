class Palindrome < ApplicationRecord

  def is_palindrome(phrase_test)
    phrase_analisys = Palindrome.create(phrase: phrase_test)
    phrase_nospace = phrase_analisys.phrase.delete(" ").downcase
    phrase_nospace_reverse = phrase_nospace.reverse.downcase
    if phrase_nospace == phrase_nospace_reverse
      puts "É um palíndromo"
    elsif phrase_analisys.phrase == " " || phrase_analisys.phrase == "nulo"
      puts "Nulo ou em branco, não há como ser analisado"
    else
      puts "Não é um palíndromo"
    end
  end

end
