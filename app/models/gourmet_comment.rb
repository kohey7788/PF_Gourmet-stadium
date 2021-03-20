class GourmetComment < ApplicationRecord
  belongs_to :visitor
  belongs_to :gourmet
end
