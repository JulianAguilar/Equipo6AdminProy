class PanelempleadoController < ApplicationController
	protect_from_forgery with: :exception
	before_action :authenticate_empleado!
  def index
  end
end
