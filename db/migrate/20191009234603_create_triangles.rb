class CreateTriangles < ActiveRecord::Migration[5.2]
  def change
    create_table :triangles do |t|
      t.integer :l1
      t.integer :l2
      t.integer :l3

      t.timestamps
    end
  end
end
