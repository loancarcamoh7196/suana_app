class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.string :unique_identifider
      t.references :brand, foreign_key: true
      t.integer :quantity
      t.boolean :available
      t.boolean :is_reserved

      t.timestamps
    end
  end
end
