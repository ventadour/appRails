class ApplicationController < ActionController::Base
  before_filter :headers_iso
  protect_from_forgery
  include SessionsHelper
  def headers_iso
    headers["content-type"]= "text/html; charset=utf-8"
  end
  
  def not_found
  raise ActionController::RoutingError.new('Not Found')
end

end
