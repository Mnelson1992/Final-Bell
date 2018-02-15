class PositionsController < ApplicationController

  
  def index
    @positions = Position.all
  end

  def show
    @position = Position.find(params[:id])
  end



  private

  def position_params
    params.require(:position).permit(:ticker)
  end


end
