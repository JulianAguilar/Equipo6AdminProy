class AgregaNuevosCamposACliente < ActiveRecord::Migration
  def change
		add_column :Clientes, :Nombre, :string
		add_column :Clientes, :Apellido_paterno, :string
		add_column :Clientes, :Apellido_materno, :string
		add_column :Clientes, :Direccion, :string
		add_column :Clientes, :Telefono, :string
  end
end
