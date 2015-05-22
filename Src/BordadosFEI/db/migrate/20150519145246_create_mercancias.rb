class CreateMercancias < ActiveRecord::Migration
  def change
    create_table :mercancias do |t|
      t.string :Descripcion
      t.float :Cantidad
      t.references :Pedido, index: true
      t.references :Producto, index: true

      t.timestamps
    end
  end
end
