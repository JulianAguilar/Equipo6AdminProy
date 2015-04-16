class Mercancia < ActiveRecord::Base
				validates :Nombre, :Descripcion, :Cantidad, :Precio, presence: true
				validates :Cantidad, numericality: { only_integer: true}
				validates :Precio, numericality: true
end
