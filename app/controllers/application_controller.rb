class ApplicationController < ActionController::Base
  before_action :configure_permitted_perameters, if: :devise_controller?

  def configure_permitted_perameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
