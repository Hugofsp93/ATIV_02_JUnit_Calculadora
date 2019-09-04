class CreatePalindromes < ActiveRecord::Migration[5.2]
  def change
    create_table :palindromes do |t|
      t.string :phrase
      t.boolean :is_palindrome

      t.timestamps
    end
  end
end
