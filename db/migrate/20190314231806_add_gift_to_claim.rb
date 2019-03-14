class AddGiftToClaim < ActiveRecord::Migration[5.2]
  def change
    add_reference :claims, :gift, foreign_key: true
  end
end
