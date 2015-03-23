class ApplicationController < ActionController::Base
	before_action :set_locale
	layout :layout_by_resource

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	def set_locale
		I18n.locale = 'es-MX'
	end

  protected

  def layout_by_resource
    if cliente_signed_in?
      "panelcliente"
		else if empleado_signed_in?
			"panelempleado"
    else
      "application"
		end
    end
  end
end
