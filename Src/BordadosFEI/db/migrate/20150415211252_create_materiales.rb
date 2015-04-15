class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.string :Nombre
      t.text :Descripcion
      t.integer :cantidad
    end
  end
end
