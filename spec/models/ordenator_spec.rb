require 'rails_helper'

RSpec.describe Ordenator, type: :model do

  before(:all) do
    @ordenator1 = create(:ordenator)
    puts "Iniciando testes unitários"
  end

  before(:each) do
    puts "Teste da classe ordenator"
  end

  it "inserir_colecao" do
    ordenator = Ordenator.new
    expect(ordenator.inserir_colecao(2))
  end

  it "informar_valor" do
    ordenators = Ordenator.all
    max_value = ordenators.max_by { |max| max[:value] }[:value]
    ordenator = Ordenator.new
    expect(ordenator.informar_valor(10) == max_value)
  end

  it "maior_valor" do
    ordenator = Ordenator.new
    expect(ordenator.maior_valor(1921))
  end

  it "menor_valor" do
    ordenator = Ordenator.new
    expect(ordenator.menor_valor(312))
  end

  it "valor_medio" do
    ordenator = Ordenator.new
    expect(ordenator.valor_medio)
  end

  it "valor_mediana" do
    ordenator = Ordenator.new
    expect(ordenator.valor_mediana)
  end
end
