class Material < ActiveRecord::Base
  belongs_to :Proveedor
	validates :Nombre, presence: true
	validates :Descripcion, presence: true
	validates :Cantidad, presence:true, numericality: true
	validates :Unidad, presence: true
 	validates	:CostoUnidad,presence: true, numericality: true
 	validates :CostoTotal, presence: true, numericality: true
end
