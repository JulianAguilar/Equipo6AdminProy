class EmpleadosController < ApplicationController
	layout 'LEmpleado'
	load_resource
  authorize_resource
  def index
		if can? :read, @empleados
			@empleados = Empleado.where.not(id: current_empleado)
		else
			redirect_to 'show'
		end
  end

  def new
		@empleado = Empleado.new
  end

	def create
		@empleado = Empleado.new(empleado_params)
		if @empleado.save
			flash[:notice] = "Se ha creado el usuario"
			redirect_to root_path
		else
			render :action => 'new'
		end
	end

  def edit
  end

  def show
  end

	private

  def empleado_params
    params.require(:empleado).permit(:Nombre, :Direccion, :Telefono, :role, :Sueldo ,:email , :password, :password_confirmation)
  end
end
