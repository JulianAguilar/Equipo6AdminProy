class AddConfirmadoToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :confirmado, :boolean
  end
end
