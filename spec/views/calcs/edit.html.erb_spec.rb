require 'rails_helper'

RSpec.describe "calcs/edit", type: :view do
  before(:each) do
    @calc = assign(:calc, Calc.create!(
      :divider => 1,
      :dividend => 1,
      :quotient => 1
    ))
  end

  it "renders the edit calc form" do
    render

    assert_select "form[action=?][method=?]", calc_path(@calc), "post" do

      assert_select "input[name=?]", "calc[divider]"

      assert_select "input[name=?]", "calc[dividend]"

      assert_select "input[name=?]", "calc[quotient]"
    end
  end
end
