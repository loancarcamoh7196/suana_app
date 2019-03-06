class Product < ApplicationRecord
  belongs_to :author
  has_many :details
  has_many :clusters
  has_many :categories, through: :cluster

  def self.get_product(id)
    Product.find(id)
  end
  
end
