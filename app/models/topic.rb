class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true

  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
  mount_uploader :image, ImageUploader
  has_many :comments
  belongs_to :user
end
