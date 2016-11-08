class Order < ApplicationRecord
  has_many :order_details
  belongs_to :user
  has_many :products, through: :order_details
end
