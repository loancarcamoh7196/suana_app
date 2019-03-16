class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.references :author, foreign_key: true
      t.integer :point_quantity
      t.boolean :is_gift, default: false

      t.timestamps
    end
  end
end
