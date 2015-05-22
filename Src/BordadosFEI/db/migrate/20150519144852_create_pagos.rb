class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.date :FechaPago
      t.float :PrecioTotal
      t.float :PrecioSinIva
      t.references :Pedido, index: true

      t.timestamps
    end
  end
end
