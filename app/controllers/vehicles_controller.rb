class VehiclesController < ApplicationController
  before_action :fetch_vehicle, only: %i[ show edit update destroy]

  def index
    @vehicles = Vehicle.all.order(created_at: :asc)
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    return redirect_to vehicle_path(@vehicle) if @vehicle.save # guard clause

    render :new
  end

  def show; end

  def edit; end

  def update
    return redirect_to vehicle_path(@vehicle) if @vehicle.update(vehicle_params)

    render :new
  end

  def destroy
    @vehicle.destroy

    redirect_to vehicles_path
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:brand, :model, :year, :kind)
  end

  def fetch_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end
