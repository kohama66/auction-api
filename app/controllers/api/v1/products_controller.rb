class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.includes(:user).where(auction_id: params[:auction_id])
    render json: products
  end

  def create
    product = Product.new(create_params)
    product.user_id = 1 ## 仮
    render json: product if product.save
  end

  private
  def create_params
    params.require(:product).permit(:name, :min_price, :auction_id, :description)
  end
end
