class BoatsController < ApplicationController

  respond_to :html
  def index
    @boats = Boat.all
    @blabla = "blabla"
  end

  def show
    @boat = Boat.find(params[:id])
    @hash = Gmaps4rails.build_markers(@boat) do |boat, marker|
      marker.lat boat.latitude
      marker.lng boat.longitude
      marker.infowindow boat.description
      marker.title   boat.title
    end
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.save
    redirect_to boat_path(@boat)
  end

  private
    def boat_params
      params.require(:boat).permit(:title, :description,:longitude,:latitude,:adress,:photo)
    end


end
