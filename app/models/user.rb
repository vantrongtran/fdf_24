class User < ApplicationRecord
  has_many :orders
  has_many :comments
  has_many :ratings

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  enum role: [:user, :admin]

  mount_uploader :avatar, PictureUploader

  validates :name, presence: true, length: {maximum: 50}
  validates :chatwork_id, presence:true

end
