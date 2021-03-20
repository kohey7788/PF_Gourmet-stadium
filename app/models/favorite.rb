class Favorite < ApplicationRecord
  belongs_to :visitor
  belongs_to :gourmet
end
