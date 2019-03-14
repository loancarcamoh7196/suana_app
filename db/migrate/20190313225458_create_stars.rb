class CreateStars < ActiveRecord::Migration[5.2]
  def change
    create_table :stars do |t|
      t.references :detail, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
