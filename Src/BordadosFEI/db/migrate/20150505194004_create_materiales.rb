class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.string :Nombre
      t.text :Descripcion
      t.float :Cantidad
      t.string :Unidad
      t.float :Costo_Unidad
      t.float :Costo_Total
      t.references :proveedor, index: true
    end
  end
end
