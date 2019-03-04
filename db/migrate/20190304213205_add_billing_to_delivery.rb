class AddBillingToDelivery < ActiveRecord::Migration[5.2]
  def change
    add_reference :deliveries, :billing, foreign_key: true
  end
end
