class Gourmet < ApplicationRecord
  belongs_to :stadium
  belongs_to :visitor
  has_many :gourmet_comments,dependent: :destroy
  has_many :comments,dependent: :destroy
end
