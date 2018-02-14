class TradesController < ApplicationController

  def new
    @trade = Trade.new
  end

  def create
    @position = Position.find(params[:id])
    @trade = Trade.new(trade_params)
    if @trade.save
      position[:id] = @trade.position_id
      redirect_to position_path(@position)
    else
      render :new
    end
  end

  def show
    @trade = Trade.find(params[:id])
  end

  def index
    @trades = Trade.all
  end

  def destroy
    @trade = Trade.find(params[:id])
    @trade.delete
    redirect_to trades_path
  end


  private

  def trade_params
    params.require(:trade).permit(:ticker, :quantity, :price)
  end





end
