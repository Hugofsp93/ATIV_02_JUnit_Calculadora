class CreateAnagrams < ActiveRecord::Migration[5.2]
  def change
    create_table :anagrams do |t|
      t.string :word_one
      t.string :word_two
      t.boolean :is_anagram

      t.timestamps
    end
  end
end
