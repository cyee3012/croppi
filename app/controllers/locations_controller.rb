class LocationsController < ApplicationController
  before_action :set_locations, only: [:show, :edit, :update, :destroy]

  def index
    @locations = policy_scope(Location)
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
    #@benchmark_pic = BenchmarkPic.find(params[:benchmark_pic_id])
    authorize @location
  end

  def create
    @location = Location.new()
    authorize @location
    #@final_pic.user = current_user
    #@final_pic.benchmark_pic = BenchmarkPic.find(params[:benchmark_pic_id])
    @location.save
    redirect_to location_path(@location)
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    redirect_to location_path(@final_pic)
  end

  # def destroy
  # end

  private

  def set_locations
    @Location = Location.find(params[:id])
    authorize @Location
  end

  def location_params
  end
end
