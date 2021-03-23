class Stadium < ApplicationRecord
  has_many :gourmets, dependent: :destroy
  attachment :image
end
