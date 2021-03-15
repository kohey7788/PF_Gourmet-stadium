class CreateStadia < ActiveRecord::Migration[5.2]
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :address
      t.string :image_id

      t.timestamps
    end
  end
end
