class Mercancia < ActiveRecord::Base
				validates :Nombre, presence: true
				validates :Descripcion, presence: true
				validates	:Cantidad, presence: true
				validates :Precio, presence: true

				validates :Cantidad, numericality: { only_integer: true}
				validates :Precio, :numericality => true
end
