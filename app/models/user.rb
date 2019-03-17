class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: %i[facebook]

  has_many :orders
  has_many :details, through: :orders

  has_many :wishlists, dependent: :destroy
  has_many :details, through: :wishlists

  has_many :comments, dependent: :destroy

  has_many :addresses, dependent: :destroy
  #Enum de la clase
  enum role: %i[user vendor admin ghest]
  enum phone_type: %i[celular fijo]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.image = auth.info.image
    end
  end

  def cart
    orders.where(paided: false)
  end
end
