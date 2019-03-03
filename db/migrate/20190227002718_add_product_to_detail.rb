class AddProductToDetail < ActiveRecord::Migration[5.2]
  def change
    add_reference :details, :product, foreign_key: true
  end
end
