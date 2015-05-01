class Proveedor < ActiveRecord::Base
	validates :Nombre,  presence: true
	validates :Direccion,  presence: true
	validates :Telefono, presence: true, :numericality => { :only_integer => true }
	validates :RFC, presence: true, uniqueness: true,  format: { with: /\A[A-ZÑ&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9]([A-Z0-9]{3})?\z/i, message: 'no es un formato de RFC válido' }
end
