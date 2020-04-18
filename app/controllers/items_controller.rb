class ItemsController < ApplicationController

  def index
    @items = Item.all 
  end

  def show
    @item = Item.find(params[:id])
    @items = @item.reviews.includes(:user)
  end

end
