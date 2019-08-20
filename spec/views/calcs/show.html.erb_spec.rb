require 'rails_helper'

RSpec.describe "calcs/show", type: :view do
  before(:each) do
    @calc = assign(:calc, Calc.create!(
      :divider => 2,
      :dividend => 3,
      :quotient => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
