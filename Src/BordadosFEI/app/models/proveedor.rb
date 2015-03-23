class Proveedor < ActiveRecord::Base
				self.primary_key = :RFC
				validates :RFC, :Nombre, :Direccion, :Producto, presence: true
				validates :RFC, format: { with: /\A[A-ZÑ&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9]([A-Z0-9]{3})?\z/i}
				validates :Telefono, numericality: { only_integer: true }, presence: true 

end
