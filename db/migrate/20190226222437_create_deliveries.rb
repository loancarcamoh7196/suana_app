class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :delivery_identifider
      t.date :delivery_date
      t.references :billing, foreign_key: true

      t.timestamps
    end
  end
end
