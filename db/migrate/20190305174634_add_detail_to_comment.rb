class AddDetailToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :detail, foreign_key: true
  end
end
