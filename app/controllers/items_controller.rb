class ItemsController < ApplicationController

  def index
    @items = Item.all 
  end

  def show
    @item = Item.find(params[:id])
  end
  
  private
  def item_params
    params.reqire(:item).permit(:name, :image, :people, :age, :time, :rule)
  end

end
