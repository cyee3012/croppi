class FinalPicsController < ApplicationController
  def index
    @final_pics = FinalPic.all
  end

  def show
    @final_pic = FinalPic.find(params[:id])
  end

  def new
    @final_pic = FinalPic.new
    @benchmark_pic = FinalPic.find(params[:benchmark_pic_id])
  end

  def create
    @final_pic = FinalPic.new(final_pic_params)
    @final_pic.save
    redirect_to final_pic_path(@final_pic)
  end

  def edit
    @final_pic = FinalPic.find(params[:id])
  end

  def update
    @final_pic = FinalPic.find(params[:id])
    @final_pic.update(final_pic_params)
    redirect_to final_pic_path(@final_pic)
  end

  def destroy
    @final_pic = FinalPic.find(params[:id])
    @final_pic.destroy
    redirect_to final_pics_path
  end

  private

  def final_pic_params
    params.require(:final_pic).permit(:benchmark_pic_id)
  end
end
