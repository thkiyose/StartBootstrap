class User < ApplicationRecord
  before_validation { email.downcase! }
  has_secure_password
  has_many :blogs, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorites_blogs, through: :favorites, source: :blog

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 6 }
end
