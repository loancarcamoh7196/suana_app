class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :rut, :string
    add_column :users, :document_number, :string
    add_column :users, :role, :integer, default: 0
    add_column :users, :phone_number, :string
    add_column :users, :phone_type, :integer, default: 0
  end
end
