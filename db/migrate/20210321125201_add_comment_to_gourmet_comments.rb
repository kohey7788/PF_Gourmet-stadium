class AddCommentToGourmetComments < ActiveRecord::Migration[5.2]
  def change
    add_column :gourmet_comments, :comment, :string
  end
end
