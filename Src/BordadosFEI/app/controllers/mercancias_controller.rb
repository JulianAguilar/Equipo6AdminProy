class MercanciasController < ApplicationController
  before_action :set_mercancia, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mercancias = Mercancia.all
    respond_with(@mercancias)
  end

  def show
    @pedido = @mercancia.Pedido
    redirect_to pedido_path(@pedido)
    #respond_with(@mercancia)
  end

  def new
    pid = Pedido.find(params[:Pedido])
    @mercancia = Mercancia.new
    @mercancia.Pedido_id = pid.id
    respond_with(@mercancia)
  end

  def edit
  end

  def create
    @mercancia = Mercancia.new(mercancia_params)
    @mercancia.save
    respond_with(@mercancia)
  end

  def update
    @mercancia.update(mercancia_params)
    respond_with(@mercancia)
  end

  def destroy
    @pedido = @mercancia.Pedido
    @mercancia.destroy
    redirect_to pedido_path(@pedido)
    #respond_with(@mercancia)
  end

  private
    def set_mercancia
      @mercancia = Mercancia.find(params[:id])
    end

    def mercancia_params
      params.require(:mercancia).permit(:Descripcion, :Cantidad, :Terminado, :Producto_id, :Pedido_id)
    end
end
