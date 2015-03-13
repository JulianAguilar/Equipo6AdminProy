class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :Nombre
      t.string :Apellido_paterno
      t.string :Apellido_materno
      t.text :Direccion
      t.string :Telefono
      t.string :Puesto
      t.string :Nombre_usuario
      t.text :Password

      t.timestamps
    end
  end
end
