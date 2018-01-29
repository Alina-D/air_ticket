class AircraftsController < ApplicationController
  before_action :set_aircraft, only: [:show, :edit, :update, :destroy]

  def index
    @aircrafts = Aircraft.all
  end

  def show
  end

  def new
    @aircraft = Aircraft.new
  end

  def create
    @aircraft = Aircraft.new(aircraft_params)

    if @aircraft.save
      redirect_to @aircraft
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @aircraft.update(aircraft_params)
      redirect_to @aircraft
    else
      render :new
    end
  end

  def destroy
    @aircraft.destroy
    redirect_to aircrafts_path

  end

  private

  def aircraft_params
    params.require(:aircraft).permit(:model, :current_airport_id, :place_id)
  end

  def set_aircraft
    @aircraft = Aircraft.find(params[:id])
  end


end