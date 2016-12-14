class ChartsController < ApplicationController
  def index
    @location = Location.find(params[:location_id])
    @charts = @location.charts
    render :index
  end
end
