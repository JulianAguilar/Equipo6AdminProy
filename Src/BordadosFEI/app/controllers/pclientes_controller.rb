class PclientesController < ApplicationController
	layout 'LCliente'
  def index
		@cliente = current_cliente
		@pedidos = @cliente.pedidos
  end

	def creapedido
		@pedido = Pedido.new
		@pedido.Cliente = current_cliente
		@pedido.FechaPedido = Date.today
		@pedido.save
		redirect_to muestra_pedido_path(@pedido.id)
	end
end
