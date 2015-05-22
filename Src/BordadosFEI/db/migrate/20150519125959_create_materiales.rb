class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.string :Nombre
      t.string :Descripcion
      t.float :Cantidad
      t.string :Unidad
      t.float :CostoUnidad
      t.float :CostoTotal
      t.references :Proveedor, index: true

      t.timestamps
    end
  end
end
