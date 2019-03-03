class AddPriceToDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :details, :price, :float
  end
end
