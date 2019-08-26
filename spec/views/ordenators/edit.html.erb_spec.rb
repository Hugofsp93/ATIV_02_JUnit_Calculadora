require 'rails_helper'

RSpec.describe "ordenators/edit", type: :view do
  before(:each) do
    @ordenator = assign(:ordenator, Ordenator.create!(
      :value => 1
    ))
  end

  it "renders the edit ordenator form" do
    render

    assert_select "form[action=?][method=?]", ordenator_path(@ordenator), "post" do

      assert_select "input[name=?]", "ordenator[value]"
    end
  end
end
