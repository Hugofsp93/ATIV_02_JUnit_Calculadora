require 'rails_helper'

RSpec.describe "palindromes/edit", type: :view do
  before(:each) do
    @palindrome = assign(:palindrome, Palindrome.create!(
      :phrase => "MyString",
      :is_palindrome => false
    ))
  end

  it "renders the edit palindrome form" do
    render

    assert_select "form[action=?][method=?]", palindrome_path(@palindrome), "post" do

      assert_select "input[name=?]", "palindrome[phrase]"

      assert_select "input[name=?]", "palindrome[is_palindrome]"
    end
  end
end
