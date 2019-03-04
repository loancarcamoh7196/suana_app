class Billing < ApplicationRecord
  belongs_to :user
  def self.init_payment(items, total)
    PayPal::SDK::REST::Payment.new({
			:intent =>  "sale",
			:payer =>  {
				:payment_method =>  "paypal" },
			:redirect_urls => {
				:return_url => "http://localhost:3000/billings/execute",
				:cancel_url => "http://localhost:3000/" },
			:transactions =>  [{
				:item_list => {
					:items => items},
				:amount =>  {
					:total =>  total.to_s,
					:currency =>  "USD" },
				:description =>  "This is the payment transaction description." }]}
				)
  end
end
