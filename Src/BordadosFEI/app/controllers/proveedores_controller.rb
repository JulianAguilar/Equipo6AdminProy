class ProveedoresController < ApplicationController
  before_action :set_proveedor, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_empleado!
  respond_to :html

  def index
    @proveedores = Proveedor.all
    respond_with(@proveedores)
  end

  def show
    respond_with(@proveedor)
  end

  def new
		@estaEditando = false
    @proveedor = Proveedor.new
    respond_with(@proveedor)
  end

  def edit
					@estaEditando = true
  end

  def create
    @proveedor = Proveedor.new(proveedor_params)
    @proveedor.save
    respond_with(@proveedor)
  end

  def update
    @proveedor.update(proveedor_params)
    respond_with(@proveedor)
  end

  def destroy
    @proveedor.destroy
    respond_with(@proveedor)
  end

  private
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
    end

    def proveedor_params
      params.require(:proveedor).permit(:RFC, :Nombre, :Direccion, :Telefono, :Producto)
    end
end
