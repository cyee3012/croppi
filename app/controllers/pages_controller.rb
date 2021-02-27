class PagesController < ApplicationController
  def home
    skip_authorization
    @location = Location.second
  end
end
