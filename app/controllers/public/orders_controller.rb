class Public::OrdersController < ApplicationController
  def new
    
    @order = Order.new
    @customer = current_customer
  end

  def confirm
    @order = Order.new(order_params)
    @address = Address.find(params[:order][:address_id])
    @order.ship_postal_code = @address.postal_code
    @order.ship_to_address = @address.address
    @order.ship_name = @address.name
  end

  def show
  end

  def index
  end


private
  def order_params
     params.require(:order).permit(:payment_method, :ship_postal_code, :ship_to_address, :ship_name)
  end

end