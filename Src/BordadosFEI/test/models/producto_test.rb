require 'test_helper'

class ProductoTest < ActiveSupport::TestCase
	test "inserta correcto" do
		@producto = Producto.new
		@producto = productos(:correcto)
		assert @producto.save, "No se ha insertado un producto correcto"
	end

	test "inserta vacio" do
		@producto = Producto.new
		assert !@producto.save, "Se ha insertado un producto incorrecto vacio"
	end

	test "inserta incorrecto sin nombre" do
		@producto = Producto.new
		@producto = productos(:incorrecto_sin_nombre)
		assert !@producto.save, "Se ha insertado un producto incorrecto  sin nombre"
	end

	test "inserta incorrecto sin descripcion" do
		@producto = Producto.new
		@producto = productos(:incorrecto_sin_descripcion)
		assert !@producto.save, "Se ha insertado un producto incorrecto sin descripcion"
	end

	test "inserta incorrecto sin costo" do
		@producto = Producto.new
		@producto = productos(:incorrecto_sin_costo)
		assert !@producto.save, "Se ha insertado un producto incorrecto  in costo"
	end
end
