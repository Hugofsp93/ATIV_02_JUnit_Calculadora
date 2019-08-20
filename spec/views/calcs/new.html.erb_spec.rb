require 'rails_helper'

RSpec.describe "calcs/new", type: :view do
  before(:each) do
    assign(:calc, Calc.new(
      :divider => 1,
      :dividend => 1,
      :quotient => 1
    ))
  end

  it "renders new calc form" do
    render

    assert_select "form[action=?][method=?]", calcs_path, "post" do

      assert_select "input[name=?]", "calc[divider]"

      assert_select "input[name=?]", "calc[dividend]"

      assert_select "input[name=?]", "calc[quotient]"
    end
  end
end
