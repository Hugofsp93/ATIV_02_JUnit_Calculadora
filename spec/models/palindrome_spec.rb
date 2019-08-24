require 'rails_helper'

RSpec.describe Palindrome, type: :model do
  
  before(:all) do
    @palindrome1 = create(:palindrome)
    puts "Iniciando testes"
  end

  before(:each) do
    puts "Teste da classe palíndromo"
  end

  # POSITIVOS
  it "is_palindrome" do
    palindrome = Palindrome.new
    expect(palindrome.is_palindrome("Ana"))
  end
  
  it "is_palindrome" do
    palindrome = Palindrome.new
    expect(palindrome.is_palindrome("Arara"))
  end
  
  # NEGATIVOS
  it "is_palindrome" do
    palindrome = Palindrome.new
    expect(palindrome.is_palindrome("Ame seu cachorro"))
  end
  
  it "is_palindrome" do
    palindrome = Palindrome.new
    expect(palindrome.is_palindrome("Após a janta"))
  end
  
  # EXCESSÃO
  it "is_palindrome" do
    palindrome = Palindrome.new
    expect(palindrome.is_palindrome("nulo"))
  end
  
  it "is_palindrome" do
    palindrome = Palindrome.new
    expect(palindrome.is_palindrome(" "))
  end
  
end
