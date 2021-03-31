class GourmetComment < ApplicationRecord
  belongs_to :visitor
  belongs_to :gourmet
  validates :comment, presence: true
end
