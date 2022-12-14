class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new
    @order.ship_postal_code = current_customer.postal_code
    @order.ship_to_address = current_customer.address
    @order.ship_name = current_customer.first_name + currento_customer.last_name
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