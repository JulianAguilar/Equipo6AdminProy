require 'test_helper'

class ProveedorTest < ActiveSupport::TestCase

	test "inserta proveeedor vacio" do # si se inserta un vacio se muestra un a falla si no no muestra nada
		@proveedor = Proveedor.new
		assert !@proveedor.save, "se inserto un proveedor vacio"
	end

	test "inserta proveedor correcto" do
		proveedor :create, :proveedor => :correcto
		assert proveedor.save,"se guarada el proveedor"
	end
end
