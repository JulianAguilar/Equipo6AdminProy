class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.date :FechaPedido
      t.date :FechaEntrega
      t.references :Cliente, index: true

      t.timestamps
    end
  end
end
