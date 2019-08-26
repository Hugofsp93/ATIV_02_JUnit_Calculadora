require 'rails_helper'

RSpec.describe Ordenator, type: :model do

  before(:all) do
    @ordenator1 = create(:ordenator)
    puts "Iniciando testes unitários"
  end

  before(:each) do
    puts "Iniciando testes"
  end

  it "soma" do
    ordenator = Ordenator.new
    expect(ordenator.soma(2, 3)).to eql(5)
  end
end
