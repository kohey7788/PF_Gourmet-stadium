class Gourmet < ApplicationRecord
  belongs_to :stadium
  belongs_to :visitor
  has_many :gourmet_comments,dependent: :destroy
  has_many :favorites,dependent: :destroy

  def favorited_by?(visitor)
    favorites.where(visitor_id: visitor.id).exists?
  end
  attachment :image

  validates :stadium_id, presence: true
  validates :name, presence: true
  validates :introduction, presence: true
  validates :image, presence: true
  # カスタムメソッド
  # validate :attach_image?
  
  # ransacker :favorites_count do
  #   query = '(SELECT COUNT(favorites.gourmet_id) FROM favorites inner join gourmets on favorites.gourmet_id = gourmets.id where favorites.gourmet_id = gourmets.id GROUP BY favorites.gourmet_id)'
  #   Arel.sql(query)
  # end
  
  # private
  
  # def attach_image?
  #   errors.add(:image_id, ' is not attached') unless image.present?
  # end
end
