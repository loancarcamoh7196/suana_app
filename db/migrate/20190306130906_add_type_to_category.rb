class AddTypeToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :type, :integer
  end
end
