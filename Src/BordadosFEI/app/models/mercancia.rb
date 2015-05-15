class Mercancia < ActiveRecord::Base
  belongs_to :Producto
  belongs_to :Pedido
end
