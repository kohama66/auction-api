class Api::V1::AuctionsController < ApplicationController
  def create
    auction = Auction.new(create_params)
    render json: auction if auction.save
  end

  private
  def create_params
    params.require(:auction).permit(:event_date)
  end
end
