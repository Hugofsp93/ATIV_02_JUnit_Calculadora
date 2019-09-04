FactoryBot.define do
  factory :palindrome do
    phrase { "MyString" }
    is_palindrome { false }
  end
end
