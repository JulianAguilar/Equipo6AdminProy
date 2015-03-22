class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores, id: false do |t|
      t.string :RFC, null: false
      t.string :Nombre
      t.string :Direccion
      t.string :Telefono
      t.string :Producto
    end
		add_index :proveedores, :RFC, unique: true
  end
end
