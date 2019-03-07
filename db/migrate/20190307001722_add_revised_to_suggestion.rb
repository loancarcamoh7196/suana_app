class AddRevisedToSuggestion < ActiveRecord::Migration[5.2]
  def change
    add_column :suggestions, :revised, :boolean, default: false
  end
end
