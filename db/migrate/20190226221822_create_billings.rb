class CreateBillings < ActiveRecord::Migration[5.2]
  def change
    create_table :billings do |t|
      t.float :value
      t.integer :delivery_method

      t.timestamps
    end
  end
end
