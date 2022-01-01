class Api::V1::ProductsController < ApplicationController
  def create
    product = Product.new(create_params)
    product.user_id = 1 ## 仮
    render json: product if product.save
  end

  private
  def create_params
    params.require(:product).permit(:name, :min_price, :auction_id)
  end
end
