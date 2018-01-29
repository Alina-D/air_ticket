class AirportsController < ApplicationController
  before_action :set_airport, only: [:show, :edit, :update,
                                     :destroy, :update_position]

  def index
    @airports = Airport.all
  end

  def show
  end

  def new
    @airport = Airport.new
  end

  def edit
  end

  def create
    @airport = Airport.new(airport_params)

    if @airport.save
      redirect_to @airport, notice: 'Airport was successfully created.'
    else
      render :new
    end
  end

  def update
    if @airport.update(airport_params)
      redirect_to @airport, notice: 'Airport was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @airport.destroy
    redirect_to airports_url, notice: 'Airport was successfully destroyed.'
  end

  def update_position
    @route = Route.find(params[:route_id])
    @airport.update_position(@route, params[:position])
    redirect_to @route
  end

  private
    def set_airport
      @airport = Airport.find(params[:id])
    end

    def airport_params
      params.require(:airport).permit(:title)
    end
end
