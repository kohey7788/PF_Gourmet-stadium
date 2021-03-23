class CreateGourmetComments < ActiveRecord::Migration[5.2]
  def change
    create_table :gourmet_comments do |t|
      t.integer :visitor_id
      t.integer :gourmet_id

      t.timestamps
    end
  end
end
