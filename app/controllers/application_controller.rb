class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def after_update_path_for(resource)
    signed_in_root_path(resource)
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

end
