require 'rails_helper'

RSpec.describe Calc, type: :model do
  
  before(:all) do
    @calc1 = create(:calc)
    puts "Iniciando testes unitários"
  end

  before(:each) do
    puts "Iniciando testes"
  end

  after(:each) do
    (1..5).each do |a|
      puts "Teste 0" + "#{a}" + " realizado"
    end
  end

  after(:all) do
    puts "Testes realizados, veja os resultados:"
  end

  it "is valid with valid attributes" do
    expect(@calc1).to be_valid
  end

  it "soma" do
    calc = Calc.new
    expect(calc.soma(2, 3)).to eql(5)
  end
  
  it "divisao" do
    calc = Calc.new
    expect(calc.divisao(10, 5)).to eql(2)
  end
  
  it "raiz" do
    calc = Calc.new
    expect(calc.raiz(9)).to eql(3.0)
  end
end
