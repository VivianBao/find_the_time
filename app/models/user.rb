class User < ApplicationRecord
  validates :name, presence: true

  validates :email, presence: true
  validates :email, uniqueness: true

  validates :password_digest, presence: true
  validates :password_digest, uniqueness: true

  validates :region, presence: true

  has_many :invitations, dependent: :destroy
  has_many :huddles, through: :invitations

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
end
