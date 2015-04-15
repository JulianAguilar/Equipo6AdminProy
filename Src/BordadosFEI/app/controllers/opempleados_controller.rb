class OpempleadosController < ApplicationController
	before_action :set_empleado, only: [:show, :edit, :update, :destroy]
	respond_to :html
  def index
		@empleados = Empleado.all
		respond_with(@empleados)
  end

  def destroy
					@empleado.destroy
					respond_with(@empleado)
  end

  def edit
  end

  def show
					respond_with(@empleado)
  end

  def update
					@empleado.update(empleado_params)
					respond_with(@empleado)
  end

	private
		def set_empleado
						@empleado = Empleado.find(params[:id])
		end
		
		def empleado_params
			params.requiere(:empleado).permit(:id, :email, :Nombre,  :Apellido_paterno, :Apellido_materno, :Direccion, :Telefono, :Puesto)
		end
end
