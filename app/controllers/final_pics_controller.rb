class FinalPicsController < ApplicationController
  def index
    @final_pics = FinalPic.all
  end

  def show
    @final_pic = FinalPic.find(params[:id])
  end

  def new
    @final_pic = FinalPic.new
  end

  def create
    @final_pic = FinalPic.new(final_pic_params)
    @final_pic.save
  end

  def edit
    @final_pic = FinalPic.find(params[:id])
  end

  def update
    @final_pic = FinalPic.find(params[:id])
    @final_pic.update(final_pic_params)
  end

  def destroy
  end

  private

  def final_pic_params
    params.require(:final_pic).permit(:title, :content)
  end
end
