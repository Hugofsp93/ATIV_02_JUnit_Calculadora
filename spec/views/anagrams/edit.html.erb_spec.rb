require 'rails_helper'

RSpec.describe "anagrams/edit", type: :view do
  before(:each) do
    @anagram = assign(:anagram, Anagram.create!(
      :word_one => "MyString",
      :word_two => "MyString",
      :is_anagram => false
    ))
  end

  it "renders the edit anagram form" do
    render

    assert_select "form[action=?][method=?]", anagram_path(@anagram), "post" do

      assert_select "input[name=?]", "anagram[word_one]"

      assert_select "input[name=?]", "anagram[word_two]"

      assert_select "input[name=?]", "anagram[is_anagram]"
    end
  end
end
