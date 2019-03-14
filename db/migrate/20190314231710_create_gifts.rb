class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :name
      t.text :description
      t.integer :points
      t.boolean :available
      t.integer :quantity

      t.timestamps
    end
  end
end
