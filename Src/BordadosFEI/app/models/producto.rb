class Producto < ActiveRecord::Base
	validates :Nombre, presence: true
	validates :Descripcion, presence: true
	validates :Costo, presence: true, numericality: true
end
