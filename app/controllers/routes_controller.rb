class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]


  def index
    @routes = Route.all
  end

  def show
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(name: params[:route][:name],
                       airport_ids: params[:route][:airport_ids])
    if @route.save
      redirect_to @route
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @route.update(name: params[:route][:name],
                     airport_ids: params[:route][:airport_ids])
      redirect_to @route
    else
      render :new
    end
  end

  def destroy
    @route.destroy
    redirect_to routes_path

  end

  private

  def route_params
    params.require(:route).permit(:name, :airport_ids)
  end

  def set_route
    @route = Route.find(params[:id])
  end
end
