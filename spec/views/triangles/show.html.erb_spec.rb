require 'rails_helper'

RSpec.describe "triangles/show", type: :view do
  before(:each) do
    @triangle = assign(:triangle, Triangle.create!(
      :l1 => 2,
      :l2 => 3,
      :l3 => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
