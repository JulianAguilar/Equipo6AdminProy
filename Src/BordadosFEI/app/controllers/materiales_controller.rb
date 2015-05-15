class MaterialesController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]

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
    @material.CostoTotal = @material.Cantidad * @material.CostoUnidad

    respond_to do |format|
      if @material.save
        format.html{ redirect_to @material, notice: 'El material fue creado.' }
        format.json { render json, status: :created, location: @material}
      else
        format.html { render :new }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|      
      if @material.update(material_params)
        @material.update(CostoTotal: (@material.CostoUnidad * @material.Cantidad))
        format.html { redirect_to @material, notice: 'Material fue actualizado.' }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to materiales_url, notice: 'Material fue eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    def set_material
      @material = Material.find(params[:id])
    end

    def material_params
      params.require(:material).permit(:Nombre, :Descripcion, :Cantidad, :Unidad, :CostoUnidad, :CostoTotal, :Proveedor_id)
    end
end
