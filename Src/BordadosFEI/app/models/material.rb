class Material < ActiveRecord::Base
				validates :Nombre, :Descripcion, :cantidad, presence: true
				validates :cantidad , numericality: {only_integer: true}
end
