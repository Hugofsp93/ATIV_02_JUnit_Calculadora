require 'rails_helper'

RSpec.describe Calc, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before(:all) do
    @calc1 = create(:calc)
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
