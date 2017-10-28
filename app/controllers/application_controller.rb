class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def access_denied(exception)
    flash[:danger] = exception.message
    redirect_to root_url
  end

  private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
