class CreateMercancias < ActiveRecord::Migration
  def change
    create_table :mercancias do |t|
      t.string :Nombre
      t.text :Descripcion
      t.integer :Cantidad
      t.float :Precio
    end
  end
end
