require 'test_helper'

class ProveedorTest < ActiveSupport::TestCase
	test "inserta correcto" do
		@proveedor = Proveedor.new
		@proveedor = proveedores(:correcto)
		assert @proveedor.save, "No se ha almacenado el usuario correcto"
	end

	test "inserta incorrecto vacio" do
		@proveedor = Proveedor.new
		assert !@proveedor.save, "se almaceno un proveedor vacio"
	end

	test "inserta incorrecto rfc" do
		@proveedor = Proveedor.new
		@proveedor = proveedores(:incorrecto_RFC)
		assert !@proveedor.save, "Se ha almacenado un proveedor incorrecto"
	end
		
	test "sin rfc" do
		@proveedor = Proveedor.new
		@proveedor = proveedores(:incorrecto_sin_rfc)
		assert !@proveedor.save, "Se ha almacenado un registro sin rfc"
	end

	test "inserta incorrecto nombre" do
		@proveedor = Proveedor.new
		@proveedor = proveedores(:incorrecto_nombre)
		assert !@proveedor.save, "se inserto un proveedor sin nombre"
	end

	test "inserta incorrecto direccion" do
		@proveedor = Proveedor.new
		@proveedor = proveedores(:incorrecto_direccion)
		assert !@proveedor.save, "Se ha insertado un proveedor sin direccion"
	end

	test "inserta incorrecto telefono" do
		@proveedor = Proveedor.new
		@proveedor = proveedores(:incorrecto_telefono)
		assert !@proveedor.save, "Se ha almacenado un proveedor sin telefono"
	end

	test "inserta incorrecto telefono tipo" do
		@proveedor = Proveedor.new
		@proveedor = proveedores(:incorrecto_tipo_telefono)
		assert !@proveedor.save, "Se ha almacenado un proveedor con un telefono con letras"
	end

	test "inserta incorrecto telefono longitud" do
		@proveedor = Proveedor.new
		@proveedor = proveedores(:incorrecto_longitud_telefono)
		assert !@proveedor.save, "Se ha almacenado un proveedor con una longitud muy corta"
	end
end
