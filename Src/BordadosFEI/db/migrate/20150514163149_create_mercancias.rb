class CreateMercancias < ActiveRecord::Migration
  def change
    create_table :mercancias do |t|
      t.string :Descripcion
      t.float :Cantidad
      t.boolean :Terminado
      t.references :Producto, index: true
      t.references :Pedido, index: true

      t.timestamps
    end
  end
end
