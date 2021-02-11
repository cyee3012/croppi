class FinalPicsController < ApplicationController
  def index
    @final_pics = FinalPic.all
  end

  def show
  end

  def new
    @final_pic = FinalPic.new
  end

  def create
    @final_pic = FinalPic.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
