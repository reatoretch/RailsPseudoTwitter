class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :allow_iframe_requests
  before_action :allow_origin

  def allow_iframe_requests
    response.headers.delete('X-Frame-Options')
  end

  def allow_origin
    response.headers['Access-Control-Allow-Origin'] = "http://localhost:8000"
  end
end
