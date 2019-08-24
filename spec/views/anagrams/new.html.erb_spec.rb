require 'rails_helper'

RSpec.describe "anagrams/new", type: :view do
  before(:each) do
    assign(:anagram, Anagram.new(
      :word_one => "MyString",
      :word_two => "MyString",
      :is_anagram => false
    ))
  end

  it "renders new anagram form" do
    render

    assert_select "form[action=?][method=?]", anagrams_path, "post" do

      assert_select "input[name=?]", "anagram[word_one]"

      assert_select "input[name=?]", "anagram[word_two]"

      assert_select "input[name=?]", "anagram[is_anagram]"
    end
  end
end
