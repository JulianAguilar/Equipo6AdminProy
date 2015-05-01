class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores, id: false do |t|
      t.string :RFC, null; false
      t.string :Nombre
      t.string :Direccion
      t.string :Telefono
    end
		add_index :proveedores, :RF, unique: true
  end
end
