class Huddle < ApplicationRecord
  validates :title, presence: true

  validates :time_range, presence: true

  # default: pending
  #[pending, confirming, confirmed]
  validates :status, presence: true

  #default: false
  #update to true upon checked by user
  validates :checked, presence: true
  validates :password_digest, uniqueness: true

  has_many :invitations, dependent: :destroy
  has_many :users, through: :invitations
end
