require 'rails_helper'

RSpec.describe "ordenators/index", type: :view do
  before(:each) do
    assign(:ordenators, [
      Ordenator.create!(
        :value => 2
      ),
      Ordenator.create!(
        :value => 2
      )
    ])
  end

  it "renders a list of ordenators" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
