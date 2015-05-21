class ProductosController < ApplicationController
  before_action :authenticate_empleado!
	before_action :set_producto, only: [:show, :edit, :update, :destroy]
	layout 'LEmpleado'
  respond_to :html

  def index
    @productos = Producto.all
    respond_with(@productos)
  end

  def show
    respond_with(@producto)
  end

  def new
    @producto = Producto.new
    respond_with(@producto)
  end

  def edit
  end

  def create
    @producto = Producto.new(producto_params)
    @producto.save
    respond_with(@producto)
  end

  def update
    @producto.update(producto_params)
    respond_with(@producto)
  end

  def destroy
    @producto.destroy
    respond_with(@producto)
  end

  private
    def set_producto
      @producto = Producto.find(params[:id])
    end

    def producto_params
      params.require(:producto).permit(:Nombre, :Descripcion, :Costo)
    end
end
