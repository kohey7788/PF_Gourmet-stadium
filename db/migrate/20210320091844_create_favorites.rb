class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :visitor_id
      t.integer :gourmet_id

      t.timestamps
    end
  end
end
