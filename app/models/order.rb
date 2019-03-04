class Order < ApplicationRecord
  belongs_to :detail
  belongs_to :billing, optional: true
  belongs_to :user
  
  validates :user_id, presence: true
  
  def self.total_items
    pluck(:quantity).sum.to_i
  end

  def self.get_total
    where(nil).map { |order| order.price * order.quantity }.sum.to_i
  end

  def self.to_paypal_items
    items = where(nil).map do |order|
			item = {}
			item[:name] = "#{order.detail.product.title} #{order.detail.chapter}"
			item[:sku] = order.detail.id.to_s
			item[:price] = order.price.to_i
			item[:currency] = 'USD'
			item[:quantity] = order.quantity
			item
		end
  end
end
