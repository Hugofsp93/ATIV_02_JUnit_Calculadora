require 'rails_helper'

RSpec.describe "ordenators/new", type: :view do
  before(:each) do
    assign(:ordenator, Ordenator.new(
      :value => 1
    ))
  end

  it "renders new ordenator form" do
    render

    assert_select "form[action=?][method=?]", ordenators_path, "post" do

      assert_select "input[name=?]", "ordenator[value]"
    end
  end
end
