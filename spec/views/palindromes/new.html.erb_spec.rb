require 'rails_helper'

RSpec.describe "palindromes/new", type: :view do
  before(:each) do
    assign(:palindrome, Palindrome.new(
      :phrase => "MyString",
      :is_palindrome => false
    ))
  end

  it "renders new palindrome form" do
    render

    assert_select "form[action=?][method=?]", palindromes_path, "post" do

      assert_select "input[name=?]", "palindrome[phrase]"

      assert_select "input[name=?]", "palindrome[is_palindrome]"
    end
  end
end
