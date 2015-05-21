class Mercancia < ActiveRecord::Base
  belongs_to :Pedido
  belongs_to :Producto
	validates :Descripcion, presence: true
	validates :Cantidad, presence: true, numericality: true
end
