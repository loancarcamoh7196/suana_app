class AddUserToBilling < ActiveRecord::Migration[5.2]
  def change
    add_reference :billings, :user, foreign_key: true
  end
end
