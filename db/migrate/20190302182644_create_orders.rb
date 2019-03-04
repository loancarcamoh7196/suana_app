class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :detail, foreign_key: true
      t.boolean :paided, default: false
      t.integer :quantity, default: 0
      t.float :price, default: 0

      t.timestamps
    end
  end
end
