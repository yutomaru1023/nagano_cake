class Admin::ItemsController < ApplicationController
  def new
    @item =Item.new
  end
  
  def create
    item = Item.new(item_params)
    item.save
    redirect_to admin_index_path
  end

  def index
    @items = Item.all
  end

  def show
  end

  def edit
  end
  
  private
   def item_params
     params.require(:item).permit(:item_image, :name, :introduction, :price, :is_active)
   end
end