class LocationsController < ApplicationController
  def index
    @locations = Location.all
    render :index
  end
end
