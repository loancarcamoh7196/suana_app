class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery
  check_authorization unless: :devise_controller? || :admin_comments_controller || :admin_dashboard_controller

  def admin_comments_controller?
    controller_path == 'admin/comments'
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name rut document_number phone_number phone_type])
  end

  rescue_from CanCan::AccessDenied do |exception|
    if current_user.nil?
      session[:next] = request.fullpath
      flash[:info] = 'Tienes que logear para ingresar.'
      redirect_to details_path
    else
      # render file: "#{Rails.root}/public/403.html", status: 403

      redirect_back(fallback_location: details_path)
    end


  end
end
