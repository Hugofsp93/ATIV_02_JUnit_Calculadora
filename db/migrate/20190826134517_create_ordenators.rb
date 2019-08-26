class CreateOrdenators < ActiveRecord::Migration[5.2]
  def change
    create_table :ordenators do |t|
      t.integer :value

      t.timestamps
    end
  end
end
