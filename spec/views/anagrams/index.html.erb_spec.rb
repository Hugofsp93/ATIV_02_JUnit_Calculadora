require 'rails_helper'

RSpec.describe "anagrams/index", type: :view do
  before(:each) do
    assign(:anagrams, [
      Anagram.create!(
        :word_one => "Word One",
        :word_two => "Word Two",
        :is_anagram => false
      ),
      Anagram.create!(
        :word_one => "Word One",
        :word_two => "Word Two",
        :is_anagram => false
      )
    ])
  end

  it "renders a list of anagrams" do
    render
    assert_select "tr>td", :text => "Word One".to_s, :count => 2
    assert_select "tr>td", :text => "Word Two".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
