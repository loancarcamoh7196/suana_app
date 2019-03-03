class AddChapterToDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :details, :chapter, :string
  end
end
