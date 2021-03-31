class Visitor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gourmets,dependent: :destroy
  has_many :gourmet_comments,dependent: :destroy
  has_many :favorites,dependent: :destroy

  validates :name, presence: true
  # validates :gender, presence: true

  enum age:{
    teenagers:   0, #10代
    twenties:    1, #20代
    thirties:    2, #30代
    forties:     3, #40代
    fifties:     4, #50代
    sixties:     5, #60代
    seventies:   6, #70代
  }
end
