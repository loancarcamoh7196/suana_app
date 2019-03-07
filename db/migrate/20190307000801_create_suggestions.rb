class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
      t.string :subject
      t.text :content
      t.text :observation
      t.integer :type_s
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
