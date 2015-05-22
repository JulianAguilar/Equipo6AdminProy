class MaterialesController < ApplicationController
	before_action :authenticate_empleado!
  before_action :set_material, only: [:show, :edit, :update, :destroy]
	layout 'LEmpleado'
  respond_to :html

  def index
    @materiales = Material.all
    respond_with(@materiales)
  end

  def show
    respond_with(@material)
  end

  def new
    @material = Material.new
    respond_with(@material)
  end

  def edit
  end

  def create
    @material = Material.new(material_params)
		@material.CostoTotal = @material.CostoUnidad * @material.Cantidad
    @material.save
    respond_with(@material)
  end

  def update
    @material.update(material_params)
    respond_with(@material)
  end

  def destroy
    @material.destroy
    respond_with(@material)
  end

  private
    def set_material
      @material = Material.find(params[:id])
    end

    def material_params
      params.require(:material).permit(:Nombre, :Descripcion, :Cantidad, :Unidad, :CostoUnidad, :CostoTotal, :Proveedor_id)
    end
end
