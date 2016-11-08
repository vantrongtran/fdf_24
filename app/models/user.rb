class User < ApplicationRecord
  has_many :orders
  has_many :comments
  has_many :ratings
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  enum role: [:user, :admin]
end
