class Stadium < ApplicationRecord
  has_many :gourmets, dependent: :destroy
  attachment :image

  validates :name, presence: true
  validates :address, presence: true
  validates :image, presence: true
  # validate :attach_image?
  
  # private
  
  # def attach_image?
  #   errors.add(:image_id, ' is not attached') unless image.present?
  # end
end
