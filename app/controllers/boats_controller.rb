class BoatsController < ApplicationController

  respond_to :html
  def index
  end

  def show

  end

  def new
    @boats = Boat.all
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
    redirect_to new_boat_path
  end

  private
    def boat_params
      params.require(:boat).permit(:title, :description,:longitude,:latitude,:adress,:photo)
    end


end
