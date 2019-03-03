class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :rut, :string
    add_column :users, :document_name, :string
    add_column :users, :role, :integer
  end
end
