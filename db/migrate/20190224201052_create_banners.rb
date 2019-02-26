class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners do |t|
      t.string :title
      t.text :description
      t.boolean :actived

      t.timestamps
    end
  end
end
