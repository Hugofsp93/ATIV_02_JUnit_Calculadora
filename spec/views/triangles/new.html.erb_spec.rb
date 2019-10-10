require 'rails_helper'

RSpec.describe "triangles/new", type: :view do
  before(:each) do
    assign(:triangle, Triangle.new(
      :l1 => 1,
      :l2 => 1,
      :l3 => 1
    ))
  end

  it "renders new triangle form" do
    render

    assert_select "form[action=?][method=?]", triangles_path, "post" do

      assert_select "input[name=?]", "triangle[l1]"

      assert_select "input[name=?]", "triangle[l2]"

      assert_select "input[name=?]", "triangle[l3]"
    end
  end
end
