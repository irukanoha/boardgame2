class ItemsController < ApplicationController

  def index
    @items = Item.all 
  end

  def show
    @item = Item.find(params[:id])
    # 下の行いる？
    @items = @item.reviews.includes(:user)
    @review = Review.new
    @reviews = @item.reviews.includes(:user)
  end

end
