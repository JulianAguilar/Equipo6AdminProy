class PagosController < ApplicationController
  before_action :set_pago, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pagos = Pago.all
    respond_with(@pagos)
  end

  def show
    respond_with(@pago)
  end

  def new
    pid = Pedido.find(params[:Pedido])
    pid.mercancias
    @total = 0
    pid.mercancias.each do |mercancia|
      @total = @total + (mercancia.Producto.Costo * mercancia.Cantidad)
    end
    @pago = Pago.new
    @pago.FechaPago = Date.today
    @pago.Subtotal =  @total/ 1.16
    @pago.Total = @total
    @pago.Pedido_id = pid.id
    respond_with(@pago)
  end

  def edit
  end

  def create
    @pago = Pago.new(pago_params)
    @pago.save

    redirect_to lclientes_cpedidos_path(Cliente: @pago.Pedido.Cliente)
  end

  def update
    @pago.update(pago_params)
    respond_with(@pago)
  end

  def destroy
    @pago.destroy
    respond_with(@pago)
  end

  private
    def set_pago
      @pago = Pago.find(params[:id])
    end

    def pago_params
      params.require(:pago).permit(:FechaPago, :Subtotal, :Total, :Pedido_id)
    end
end
