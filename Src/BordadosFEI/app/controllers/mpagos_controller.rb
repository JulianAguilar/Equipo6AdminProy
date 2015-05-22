class MpagosController < ApplicationController
	layout "LEmpleado"
  def index
		@pedidos = Pedido.all
  end

	def pagado
		@pedidos = Pedido.all
	end

  def new
		@pedido = Pedido.find(params[:id])
		@pago = Pago.new
		@pago.FechaPago = Date.today
		@pago.Pedido = @pedido
		@total = 0.0
		@pedido.Mercancias.each do |mercancia|
			@total = @total + (mercancia.Producto.Costo * mercancia.Cantidad)
		end
		@pago.PrecioTotal = @total
		@pago.PrecioSinIva = @total/ 1.16
  end
	def pagar
		@pedido = Pedido.find(params[:id])
		@pago = Pago.new
		@pago.FechaPago = Date.today
		@pago.Pedido = @pedido
		@total = 0.0
		@pedido.Mercancias.each do |mercancia|
			@total = @total + (mercancia.Producto.Costo * mercancia.Cantidad)
		end
		@pago.PrecioTotal = @total
		@pago.PrecioSinIva = @total/ 1.16
		if @pago.save 
			flash[:message] = "El pago se ha realizado"
		else
			flash[:error] = "Ha ecurrido un error al realizar el pago" 
		end
		redirect_to mpagos_index_path
		
	end
end
