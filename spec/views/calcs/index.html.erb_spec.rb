require 'rails_helper'

RSpec.describe "calcs/index", type: :view do
  before(:each) do
    assign(:calcs, [
      Calc.create!(
        :divider => 2,
        :dividend => 3,
        :quotient => 4
      ),
      Calc.create!(
        :divider => 2,
        :dividend => 3,
        :quotient => 4
      )
    ])
  end

  it "renders a list of calcs" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
