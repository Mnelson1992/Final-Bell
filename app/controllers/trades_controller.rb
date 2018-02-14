class TradesController < ApplicationController

  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)
    if @trade.save
      redirect_to trade_path(@trade)
    else
      render :new
    end
  end

  def show
    @trade = Trade.find(params[:id])
  end




  private

  def trade_params
    params.require(:trade).permit(:ticker, :quantity, :price)
  end





end
