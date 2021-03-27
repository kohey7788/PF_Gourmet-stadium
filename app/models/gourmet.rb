class Gourmet < ApplicationRecord
  belongs_to :stadium
  belongs_to :visitor
  has_many :gourmet_comments,dependent: :destroy
  has_many :favorites,dependent: :destroy

  def favorited_by?(visitor)
    favorites.where(visitor_id: visitor.id).exists?
  end
  attachment :image

  # ransacker :favorites_count do
  #   query = '(SELECT COUNT(favorites.gourmet_id) FROM favorites inner join gourmets on favorites.gourmet_id = gourmets.id where favorites.gourmet_id = gourmets.id GROUP BY favorites.gourmet_id)'
  #   Arel.sql(query)
  # end
end
