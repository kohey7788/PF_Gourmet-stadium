class Stadium < ApplicationRecord
  has_many :gourmets, dependent: :destroy
end
