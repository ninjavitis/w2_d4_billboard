class ApplicationController < ActionController::Base
  before_action :sanitize, if: :devise_controller?

  protected
  def sanitize
    devise_parameter_sanitizer.permit(:route, keys:[:first_name, :last_name])
  end
end
