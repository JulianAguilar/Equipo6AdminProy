class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery 
	rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to empleado_path(current_empleado)
  end
	alias_method :current_user, :current_empleado

	
end
