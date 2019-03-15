class Gift < ApplicationRecord
  has_many :claims
  #Para active storage de varias imagenes
  has_many_attached :images
end
