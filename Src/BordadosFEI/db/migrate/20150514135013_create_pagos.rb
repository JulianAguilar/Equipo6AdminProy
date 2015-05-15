class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.date :FechaPago
      t.float :Subtotal
      t.float :Total
      t.references :Pedido, index: true

      t.timestamps
    end
  end
end
