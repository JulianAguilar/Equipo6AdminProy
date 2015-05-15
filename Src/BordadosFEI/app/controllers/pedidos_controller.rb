class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pedidos = Pedido.all
    respond_with(@pedidos)
  end

  def show
    respond_with(@pedido)
  end

  def new
    ic = Cliente.find(params[:Cliente])
    @pedido = Pedido.new
    @pedido.Cliente_id = ic.id
    respond_with(@pedido)
  end

  def edit
    @pedido.update(confirmado: true)
    redirect_to pedido_path(@pedido)
  end

  def create
    @pedido = Pedido.new(pedido_params)
    @pedido.confirmado = false
    @pedido.save
    respond_with(@pedido)
  end

  def update
    
  end

  def destroy
    @pedido.destroy
    respond_with(@pedido)
  end

  private
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    def pedido_params
      params.require(:pedido).permit(:FechaPedido, :FechaEntrega, :Cliente_id)
    end
end
