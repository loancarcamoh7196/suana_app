class Product < ApplicationRecord
  belongs_to :author
  has_many :details, dependent: :destroy
  has_many :clusters, dependent: :destroy
  has_many :categories, through: :clusters

  def self.get_product(id)
    Product.find(id)
  end
  
end
