class MercanciasController < ApplicationController
  before_action :set_mercancia, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mercancias = Mercancia.all
    respond_with(@mercancias)
  end

  def show
    respond_with(@mercancia)
  end

  def new
    @mercancia = Mercancia.new
		 @mercancia.Pedido = Pedido.find(params[:Pedido])
    respond_with(@mercancia)
  end

  def edit
  end

  def create
    @mercancia = Mercancia.new(mercancia_params)
    @mercancia.save
		redirect_to muestra_pedido_path(@mercancia.Pedido.id)
##    respond_with(@mercancia)
  end

  def update
    @mercancia.update(mercancia_params)
    respond_with(@mercancia)
  end

  def destroy
		@pedido = @mercancia.Pedido
    @mercancia.destroy
		redirect_to muestra_pedido_path(@Pedido.id)
#    respond_with(@mercancia)
  end

  private
    def set_mercancia
      @mercancia = Mercancia.find(params[:id])
    end

    def mercancia_params
      params.require(:mercancia).permit(:Descripcion, :Cantidad, :Pedido_id, :Producto_id)
    end
end
