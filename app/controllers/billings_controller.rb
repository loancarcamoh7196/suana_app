class BillingsController < ApplicationController
  def pre_pay
    orders = current_user.cart
    total = orders.get_total
    items = orders.to_paypal_items
    
    payment = Billing.init_payment(items, total)
    byebug
    if payment.create
      #@payment.id
      redirect_url = payment.links.find{ |v| v.method == 'REDIRECT' }.href
      redirect_to redirect_url
    else
      payment.error
		end
  end

  def execute
    paypal_payment = PayPal::SDK::REST::Payment.find(params[:paymentId])
    byebug
    if paypal_payment.execute(payer_id: params[:PayerID])
      #render plain: ':)'
      total = paypal_payment.transactions.first.amount.total
      billing = Billing.create(
        user: current_user,
        code: paypal_payment.id,
        payment_method: 'paypal',
        amount: total.to_i,
        currency: 'USD'
      )
    
      orders = current_user.cart
      orders.update_all(paided: true, billing_id: billing.id)
      flash[:success] = 'El pago se ha realizado con éxito!!! ;)'
      redirect_to root_path
    else
      render plain: ':('
    end
  end
end
