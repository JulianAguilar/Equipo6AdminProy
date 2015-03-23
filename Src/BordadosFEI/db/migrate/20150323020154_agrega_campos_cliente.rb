class AgregaCamposCliente < ActiveRecord::Migration
  def change
					add_column :clientes, :Nombre, :string
					add_column :clientes, :Apellido_paterno, :string
					add_column :clientes, :Apellido_materno, :string
					add_column :clientes, :Direccion, :string
					add_column :clientes, :Telefono, :string
  end
end
