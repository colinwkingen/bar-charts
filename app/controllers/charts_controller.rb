class ChartsController < ApplicationController
  def google_map
    @location = Location.find(params[:location_id])
    @long = @location.longitude.to_s
    @lat = @location.latitude.to_s
    "https://maps.googleapis.com/maps/api/staticmap?key=#{ENV['GOOGLE_KEY']}&center=" + @lat + "," + @long + "&size=800x300&scale=2&zoom=17&style=feature:poi|element:labels|visibility:off&style=feature:transit|element:labels|visibility:off"
  end

  def index
    @location = Location.find(params[:location_id])
    @charts = @location.charts
    respond_to do |format|
      format.html
      format.json { render json: @location.scores }
      format.js
    end
  end

end
