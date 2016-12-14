class ApplicationController < ActionController::Base
  helper_method :google_map
  protect_from_forgery with: :exception
end
