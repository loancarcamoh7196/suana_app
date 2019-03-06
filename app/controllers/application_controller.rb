class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name rut document_number phone_number phone_type])
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      flash[:info] = exception.message
      format.html { redirect_to root_url }
    end
  end
end
