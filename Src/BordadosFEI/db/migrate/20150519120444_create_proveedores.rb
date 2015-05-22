class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|
      t.string :RFC
      t.string :Nombre
      t.string :Direccion
      t.string :Telefono

      t.timestamps
    end
  end
end
