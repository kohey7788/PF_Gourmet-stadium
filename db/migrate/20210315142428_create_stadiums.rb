class CreateStadiums < ActiveRecord::Migration[5.2]
  def change
    create_table :stadiums do |t|
      t.string :name      ,null: false
      t.string :address   ,null: false
      t.string :image_id
      
      t.timestamps
    end
  end
end
