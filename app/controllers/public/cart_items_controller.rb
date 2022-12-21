class Public::CartItemsController < ApplicationController

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    @cart_item.save
    redirect_to public_cart_items_path

  end

  def index
    @cart_items = CartItem.all
    @total_price = 0
  end

  def destroy
    @item = CartItem.find(params[:id])
    @item.destroy
    redirect_to public_cart_items_path
  end

  def destroy_all
    CartItem.destroy_all
    current_customer.cart_items.destroy_all
    redirect_to public_cart_items_path

  end

  private
   def cart_item_params
     params.require(:cart_item).permit(:item_id, :amount, :customer_id)
   end
end

