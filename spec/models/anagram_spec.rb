require 'rails_helper'

RSpec.describe Anagram, type: :model do
  before(:all) do
    @anagram1 = create(:anagram)
    puts "Iniciando testes"
  end

  before(:each) do
    puts "Teste da classe anagrama"
  end

  # POSITIVOS
  it "is_anagram" do
    anagram = Anagram.new
    expect(anagram.is_anagram("Amor", "Roma"))
  end
  
  it "is_anagram" do
    anagram = Anagram.new
    expect(anagram.is_anagram("Moça", "Maço"))
  end
  
  # NEGATIVOS
  it "is_anagram" do
    anagram = Anagram.new
    expect(anagram.is_anagram("Mato", "Moto"))
  end
  
  it "is_anagram" do
    anagram = Anagram.new
    expect(anagram.is_anagram("Futebol", "Basebol"))
  end
  
  # EXCESSÃO
  it "is_anagram" do
    anagram = Anagram.new
    expect(anagram.is_anagram(nil, nil))
  end
  
  it "is_anagram" do
    anagram = Anagram.new
    expect(anagram.is_anagram(" ", " "))
  end
end
