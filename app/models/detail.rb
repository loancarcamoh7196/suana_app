class Detail < ApplicationRecord
  belongs_to :brand
  belongs_to :product

  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
  
  #Para active storage de varias imagenes
  has_many_attached :images
end
