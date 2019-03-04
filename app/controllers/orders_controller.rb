class OrdersController < ApplicationController
  def create
    @detail = Detail.find(params[:detail_id])
    @order = current_user.orders.where(detail_id: @detail.id, paided: false).first
    #Reemplaza consulta de order y if, sin embargo por default de qauntity debe ser 0
    #order = Order.find_or_create_by(detail: @detail, user: current_user, paid: false)
    #order.quantiry + = 1
    
    if @order.present?
      @order.quantity += 1
    else
      @order = Order.new(detail: @detail, user: current_user, price: @detail.price, quantity: 1)
    end
    respond_to do |format|
      if @order.save
        flash[:success] = 'Producto ha sido agregado exitosamente al carro!'
        format.js 
      else
        flash[:danger] = 'Error. Intente nuevamente'
        format.html { redirect_to detail_path(@detail) }
      end
    end
  end

  
    
  def cart
    
    @orders = current_user.cart.order(:id)
    #@total = @orders.map{|order| order.detail.price}.sum
    @total = @orders.inject(0){|sum, order| sum += order.price.to_i * order.quantity }
    @count = @orders.inject(0){|sum, order| sum +=  order.quantity }
  end
    
  def remove_one_item
    @order = Order.find(params[:order_id])
    @order.quantity-=1 if @order.quantity > 1
    @order.save if @order.changed?
    flash[:warning] = 'Cantidad modificada con éxito!'
    redirect_to cart_orders_path
  end
    
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    flash[:warning] = 'Se ha quitado producto del carro!'
    redirect_to cart_orders_path
  end

  def buy
    current_user.cart.update_all(paided: true)
    flash[:success] = 'Se ha pagados los productos exitosamente!'
    redirect_to root_path
  end
  
  def bought_products
    @orders = current_user.orders.where(paid:true)
  end
  
  def empty_cart
    @orders = current_user.cart
    @orders.destroy_all
    flash[:danger] = 'Carro vaciado con éxito!'
    redirect_to cart_orders_path
  end
end
