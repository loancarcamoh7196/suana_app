class Detail < ApplicationRecord
  belongs_to :brand
  belongs_to :product

  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
  
  has_many :wishlists, dependent: :destroy
  has_many :users, through: :wishlists
  #Para active storage de varias imagenes
  has_many_attached :images

  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  def in_wishlist(user)
    wishlists.where(user: user).first
  end
end
