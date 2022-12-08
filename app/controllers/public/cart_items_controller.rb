class Public::CartItemsController < ApplicationController
  
  def new
    @cart_item = Cart_item.new
  end
  
  def create
    @cart_item = Cart_item.new(cart_item_params)
    
  end
  
  def index
  end
  
  private
   def cart_item_params
     params.require(:cart_item).permit(:item_id, :amount)
   end
end

