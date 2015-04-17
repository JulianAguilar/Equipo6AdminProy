class Material < ActiveRecord::Base
				validates :Nombre, :Descripcion, :cantidad, presence: true
				validates :cantidad , numericality: true
end
