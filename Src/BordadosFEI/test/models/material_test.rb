require 'test_helper'

class MaterialTest < ActiveSupport::TestCase
	test "inserta material vacio" do
		material = Material.new
		assert !material.save, "se ha almacenado un material vacio"
	end
	
	test "inserta incorrecto sin nombre" do
		material = Material.new
		material = materiales(:incorrecto_sin_nombre)
		assert !material.save,"se inserto un material incorrecto sin nombre"
	end
	test "inserta incorrecto sin descripcion" do
		material = Material.new
		material = materiales(:incorrecto_sin_descripcion)
		assert !material.save,"se inserto un material incorrecto sin descripcion"
	end

	test "inserta incorrecto sin cantidad" do
		material = Material.new
		material = materiales(:incorrecto_sin_cantidad)
		assert !material.save,"se inserto un material incorrecto sin cantidad"
	end

#	test "inserta incorrecto cantidad erronea" do
#		material = Material.new
#		material = materiales(:incorrecto_cantidad_erronea)
#		assert !material.save,"se inserto un material con cantidad erronea"
#	end

	test "inserta correcto" do
		material = Material.new
		material = materiales(:correcto)
		assert material.save,"no se inserto un material correcto"
	end








  # test "the truth" do
  #   assert true
  # end
end
