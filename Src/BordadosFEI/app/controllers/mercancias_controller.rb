class MercanciasController < ApplicationController
  before_action :set_mercancia, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_empleado!
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
    @mercancia.destroy
    respond_with(@mercancia)
  end

  private
    def set_mercancia
      @mercancia = Mercancia.find(params[:id])
    end

    def mercancia_params
      params.require(:mercancia).permit(:Nombre, :Descripcion, :Cantidad, :Precio)
    end
end
