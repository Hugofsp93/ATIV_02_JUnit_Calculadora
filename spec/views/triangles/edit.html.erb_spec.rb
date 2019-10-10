require 'rails_helper'

RSpec.describe "triangles/edit", type: :view do
  before(:each) do
    @triangle = assign(:triangle, Triangle.create!(
      :l1 => 1,
      :l2 => 1,
      :l3 => 1
    ))
  end

  it "renders the edit triangle form" do
    render

    assert_select "form[action=?][method=?]", triangle_path(@triangle), "post" do

      assert_select "input[name=?]", "triangle[l1]"

      assert_select "input[name=?]", "triangle[l2]"

      assert_select "input[name=?]", "triangle[l3]"
    end
  end
end
