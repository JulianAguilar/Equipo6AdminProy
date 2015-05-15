class PanelclienteController < ApplicationController
  def index
  	@cliente = current_cliente
  	puts @cliente.Nombre
  end
end
