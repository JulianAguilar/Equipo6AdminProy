class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.date :FechaPedido
      t.boolean :Confirmado
      t.references :Cliente, index: true

      t.timestamps
    end
  end
end
