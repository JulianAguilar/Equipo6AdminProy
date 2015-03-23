class PanelclienteController < ApplicationController
	protect_from_forgery with: :exception
	before_action :authenticate_cliente!
  def index
  end
end
