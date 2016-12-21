class ChartsController < ApplicationController
  def google_map(center)

    "https://maps.googleapis.com/maps/api/staticmap?key=#{ENV['GOOGLE_KEY']}&center=#{center}&size=800x300&scale=2&zoom=17"
  end

  def index
    @location = Location.find(params[:location_id])
    @charts = @location.charts
    render :index
  end
end
