class LocationsController < ApplicationController
  before_action :set_locations, only: [:show, :edit, :update, :destroy]

  def index
    @locations = policy_scope(Location)
    @locations = Location.all
    @markers = @locations.geocoded.map do |location|
      # if the location has pic
      {
        lat: location.latitude,
        lng: location.longitude,
        id: location.id,
        image_url: helpers.url_for(location.final_pics.last.photo)
      }
      # if the location doen't has phot add crropi logo
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
