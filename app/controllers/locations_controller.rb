class LocationsController < ApplicationController
  before_action :set_locations, only: [:show, :edit, :update, :destroy]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def index
    @locations = policy_scope(Location)
  end

  def show
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
    @Location = Location.find(params[:id])
    authorize @Location
  end

  def location_params
  end
end
