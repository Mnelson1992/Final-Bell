class PositionsController < ApplicationController

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      trade[position_id] = @position.id
    else
      render :new
    end
  end

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
