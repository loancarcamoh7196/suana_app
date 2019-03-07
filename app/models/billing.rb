class Billing < ApplicationRecord
	belongs_to :user
	has_many :orders, optional: true
  def self.init_payment(items, total)
    PayPal::SDK::REST::Payment.new({
			intent: "sale",
			payer: {
				payment_method: "paypal" },
			redirect_urls: {
				return_url: "http://localhost:3000/billings/execute",
				cancel_url: "http://localhost:3000/" },
			transactions: [{
				item_list: {
					items: items },
				amount:  {
					total: total.to_i,
					currency: "USD" },
				description: "Pago hecho a tienda online Suana - #{Time.now} ." }]
		})
  end
end
