class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Add your custom devise parameter sanitization here if you have any
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path, alert: 'Please Sign in before making a booking!'
    end
  end
end
