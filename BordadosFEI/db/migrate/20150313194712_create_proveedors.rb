class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :Nombre
      t.text :Direccion
      t.string :Telefono
      t.string :Correo
      t.string :RFC

      t.timestamps
    end
  end
end
