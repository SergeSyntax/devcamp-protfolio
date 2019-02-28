class ApplicationController < ActionController::Base

  before_action :configure_premitted_parameters, if: :devise_controller?


  def configure_premitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:acount_update, keys: [:name])

  end
end
