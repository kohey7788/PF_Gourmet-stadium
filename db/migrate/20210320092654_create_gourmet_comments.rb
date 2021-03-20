class CreateGourmetComments < ActiveRecord::Migration[5.2]
  def change
    create_table :gourmet_comments do |t|

      t.timestamps
    end
  end
end
