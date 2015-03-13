class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :Nombre
      t.string :Apellido_paterno
      t.string :Apellido_materno
      t.text :Direccion
      t.string :Telefono
      t.string :Correo

      t.timestamps
    end
  end
end
