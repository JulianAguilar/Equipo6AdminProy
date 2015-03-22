class ApplicationController < ActionController::Base
	before_action :set_locale
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	def set_locale
		I18n.locale = 'es-MX'
	end
end
