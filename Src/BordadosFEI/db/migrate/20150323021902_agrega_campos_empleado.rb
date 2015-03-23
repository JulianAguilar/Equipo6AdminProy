class AgregaCamposEmpleado < ActiveRecord::Migration
  def change
		add_column :empleados, :Nombre, :string
		add_column :empleados, :Apellido_paterno, :string
		add_column :empleados, :Apellido_materno, :string
		add_column :empleados, :Direccion, :string
		add_column :empleados, :Telefono, :string
		add_column :empleados, :Puesto, :string
  end
end
