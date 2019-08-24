require 'rails_helper'

RSpec.describe "anagrams/show", type: :view do
  before(:each) do
    @anagram = assign(:anagram, Anagram.create!(
      :word_one => "Word One",
      :word_two => "Word Two",
      :is_anagram => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Word One/)
    expect(rendered).to match(/Word Two/)
    expect(rendered).to match(/false/)
  end
end
