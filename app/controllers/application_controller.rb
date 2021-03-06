class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'https://localhost:3000'
  end

end
