class Category < ApplicationRecord
  has_many :clusters
  has_many :products, through: :cluster

  #Enum para categorizar general de productos
  enum type: %i[comic manga libro revista]
  
end
