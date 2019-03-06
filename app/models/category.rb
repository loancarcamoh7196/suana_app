class Category < ApplicationRecord
  has_many :products, through: :cluster
end
