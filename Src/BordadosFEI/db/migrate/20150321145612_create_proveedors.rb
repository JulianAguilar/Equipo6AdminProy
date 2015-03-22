class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors, id: false do |t|
      t.string :RFC, null: false
      t.string :Nombre
      t.string :Direccion
      t.string :Telefono
      t.string :Producto
    end
		add_index :proveedors, :RFC, unique: true
  end
end
