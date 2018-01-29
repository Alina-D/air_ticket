class PlacesController < ApplicationController
  before_action :set_aircraft, only: [:new, :create ]

  def new
    @place = Place.new
  end

  def show
    @place = Place.find(params[:id])
  end

  def create
    @place = @aircraft.places.new(place_params)

    if @place.save
      redirect_to @aircraft
    else
      render :new
    end
  end

  protected

  def set_aircraft
    @aircraft = Aircraft.find(params[:aircraft_id])
  end

  def place_params
    params.require(:place).permit(:title, :economy_seats, :comfort_seats, :business_seats)
  end
end