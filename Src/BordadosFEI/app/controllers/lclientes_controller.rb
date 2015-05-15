class LclientesController < ApplicationController
  def index
  	@clientes = Cliente.all
  end

  def cpedidos
  	@cliente = Cliente.find(params[:Cliente])
  end
end
