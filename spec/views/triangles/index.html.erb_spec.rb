require 'rails_helper'

RSpec.describe "triangles/index", type: :view do
  before(:each) do
    assign(:triangles, [
      Triangle.create!(
        :l1 => 2,
        :l2 => 3,
        :l3 => 4
      ),
      Triangle.create!(
        :l1 => 2,
        :l2 => 3,
        :l3 => 4
      )
    ])
  end

  it "renders a list of triangles" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
