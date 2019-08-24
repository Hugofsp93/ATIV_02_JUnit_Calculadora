FactoryBot.define do
  factory :anagram do
    word_one { "MyString" }
    word_two { "MyString" }
    is_anagram { false }
  end
end
