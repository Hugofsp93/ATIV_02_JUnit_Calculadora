require 'rails_helper'

RSpec.describe "ordenators/show", type: :view do
  before(:each) do
    @ordenator = assign(:ordenator, Ordenator.create!(
      :value => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
