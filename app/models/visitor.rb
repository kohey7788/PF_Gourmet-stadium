class Visitor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gourmets,dependent: :destroy
  has_many :gourmet_comments,dependent: :destroy
  has_many :favorite,dependent: :destroy
end
