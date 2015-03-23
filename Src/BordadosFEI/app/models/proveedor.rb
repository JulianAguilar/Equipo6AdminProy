class Proveedor < ActiveRecord::Base
	self.primary_key = 'RFC'
	validates :RFC, :Nombre, :Direccion, :Telefono, :Producto, presence: true
	validates :RFC, uniqueness: true,  format: { with: /\A[A-ZÑ&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9]([A-Z0-9]{3})?\z/i, message: 'no es un formato de RFC válido' }	
	validates :Telefono, numericality: { only_integer: true }
end
