class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :Nombre
      t.text :Descripcion
      t.float :Costo
    end
  end
end
