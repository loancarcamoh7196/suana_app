class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :details, through: :orders


  has_many :wishlists, dependent: :destroy
  has_many :details, through: :wishlists
  #Enum de la clase
  enum role: %i[user vendor admin ghest]
  enum phone_type: %i[celular fijo]

  def cart
    orders.where(paided: false)
  end
end
