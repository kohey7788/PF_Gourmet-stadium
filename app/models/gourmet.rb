class Gourmet < ApplicationRecord
  belongs_to :stadium
  belongs_to :visitor
  has_many :gourmet_comments,dependent: :destroy
  has_many :favorites,dependent: :destroy

  def favorited_by?(visitor)
    favorites.where(visitor_id: visitor.id).exists?
  end
  attachment :image
end
