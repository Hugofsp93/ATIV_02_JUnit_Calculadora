require 'rails_helper'

RSpec.describe "palindromes/index", type: :view do
  before(:each) do
    assign(:palindromes, [
      Palindrome.create!(
        :phrase => "Phrase",
        :is_palindrome => false
      ),
      Palindrome.create!(
        :phrase => "Phrase",
        :is_palindrome => false
      )
    ])
  end

  it "renders a list of palindromes" do
    render
    assert_select "tr>td", :text => "Phrase".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
