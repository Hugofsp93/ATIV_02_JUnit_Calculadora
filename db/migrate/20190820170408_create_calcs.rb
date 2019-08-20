class CreateCalcs < ActiveRecord::Migration[5.2]
  def change
    create_table :calcs do |t|
      t.float :divider
      t.float :dividend
      t.float :quotient

      t.timestamps
    end
  end
end
