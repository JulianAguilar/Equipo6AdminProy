class Material < ActiveRecord::Base
	validates :proveedor, presence: true
  belongs_to :proveedor
end
