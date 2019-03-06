class Author < ApplicationRecord
  has_one_attached :image
  has_many :product
end
