require 'test_helper'

class ProveedorTest < ActiveSupport::TestCase
	test "inserta proveedor correcto" do
				proveedor = Proveedor.new
				proveedor = proveedores(:correcto)
				assets proveedor.save "no se guarado un proveedor correcto"
	end
end
