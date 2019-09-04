require 'rails_helper'

RSpec.describe "palindromes/show", type: :view do
  before(:each) do
    @palindrome = assign(:palindrome, Palindrome.create!(
      :phrase => "Phrase",
      :is_palindrome => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Phrase/)
    expect(rendered).to match(/false/)
  end
end
