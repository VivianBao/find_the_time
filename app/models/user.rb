class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true

  validates :email, presence: true
  validates :email, uniqueness: true

  validates :password_digest, presence: true
  validates :password_digest, uniqueness: true

  validates :region, presence: true

  has_many :invitations, dependent: :destroy
  has_many :huddles, through: :invitations

  has_many :friendships_as_user, dependent: :destroy
  has_many :friends, as: :user, through: :friendships
end
