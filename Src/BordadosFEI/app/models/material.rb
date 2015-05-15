class Material < ActiveRecord::Base

  validates :Nombre, presence: true
  validates :Descripcion, presence: true
  validates :Cantidad, presence: true, numericality: true
  validates :Unidad, presence: true
  validates :CostoUnidad, presence: true, numericality: true
  validates :Proveedor, presence: true
  validates :Proveedor_id, presence: true
  belongs_to :Proveedor
end
