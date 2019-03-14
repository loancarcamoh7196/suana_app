class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number_street
      t.integer :building_type
      t.string :zip_code
      t.references :township, foreign_key: true
      t.references :user, foreign_key: true
     
      t.timestamps
    end
  end
end
