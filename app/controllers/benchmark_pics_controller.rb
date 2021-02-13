class BenchmarkPicsController < ApplicationController
  before_action :set_benchmark_pic, only: [:show, :edit, :update, :destroy]

  def index
    @benchmark_pics = policy_scope(BenchmarkPic)
  end

  def show
    @benchmark_pic = BenchmarkPic.find(params[:id])
  end

  def new
    @benchmark_pic = current_user.benchmark_pics.new
    authorize @benchmark_pic
  end

  def create
    @benchmark_pic = current_user.benchmark_pics.new(benchmark_pic_params) #BenchmarkPic.new(benchmark_pic_params)
    @benchmark_pic.user = current_user
    authorize @benchmark_pic
    if @benchmark_pic.save
      redirect_to new_benchmark_pic_final_pic_path(@benchmark_pic)
    else
      render :new
    end
  end

  def edit
    @benchmark_pic = BenchmarkPic.find(params[:id])
  end

  def update
    @benchmark_pic = BenchmarkPic.find(params[:id])
    @benchmark_pic.update(benchmark_pic_params)
    redirect_to new_final_pic_path
  end

  def destroy
    @benchmark_pic = BenchmarkPic.find(params[:id])
    @benchmark_pic.destroy
    redirect_to benchmark_pics_path
  end

  private
  # i added this one, not sure if we need a callback to share common setup
  def set_benchmark_pic
    @benchmark_pic = BenchmarkPic.find(params[:id])
    authorize @benchmark_pic
  end

  def benchmark_pic_params
    #params.require(:benchmark_pic).permit(:user_id, :photo)
    params.require(:benchmark_pic).permit(:photo)
  end
end
