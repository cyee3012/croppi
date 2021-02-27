class LocationsController < ApplicationController
  before_action :set_locations, only: [:show, :edit, :update, :destroy]

  def index
    @locations = policy_scope(Location)
    @locations = Location.all
    @markers = @locations.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_locations
    @location = Location.find(params[:id])
    authorize @location
  end

  def location_params
  end
end
