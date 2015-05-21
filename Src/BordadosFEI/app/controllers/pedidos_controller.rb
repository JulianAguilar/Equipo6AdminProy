class PedidosController < ApplicationController
	layout :choose_layout

  def choose_layout
    if empleado_signed_in?
      "LEmpleado"
    else
      "LCliente"
    end
  end
  def index
  end

  def show
		@pedido = Pedido.find(params[:id])
  end

	def confirma
		@pedido = Pedido.find(params[:id])
		
		@pedido.update(Confirmado: true)
		redirect_to root_path
	end
end
