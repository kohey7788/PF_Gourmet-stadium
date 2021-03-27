class CreateGourmets < ActiveRecord::Migration[5.2]
  def change
    create_table :gourmets do |t|
      t.integer :visitor_id
      t.integer :stadium_id
      t.string :name
      t.string :image_id
      t.string :favorite_food
      t.text :introduction
      t.integer :favorites_count, default: 0
      t.timestamps
    end
  end
end
