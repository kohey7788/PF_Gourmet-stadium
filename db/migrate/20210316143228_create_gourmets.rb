class CreateGourmets < ActiveRecord::Migration[5.2]
  def change
    create_table :gourmets do |t|
      t.integer :visitor_id,    null: false
      t.integer :stadium_id,    null: false
      t.string :name,           null: false
      t.string :image_id
      t.text :introduction,     null: false
      t.integer :favorites_count, default: 0
      t.timestamps
    end
  end
end
