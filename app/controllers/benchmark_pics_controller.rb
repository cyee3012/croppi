class BenchmarkPicsController < ApplicationController
  def index
    @benchmark_pics = BenchmarkPic.all
  end

  def show
    @benchmark_pic = BenchmarkPic.find(params[:id])
  end

  def new
    @benchmark_pic = BenchmarkPic.new
  end

  def create
    @benchmark_pic = BenchmarkPic.new(benchmark_pic_params)
    @benchmark_pic.save
    redirect_to new_final_pic_path
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

  def benchmark_pic_params
    params.require(:benchmark_pic).permit(:user_id, :photo)
  end
end
