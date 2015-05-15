require 'test_helper'

class MaterialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "inserta correcto" do
  	@material = Material.new
  	@material = materiales(:correcto)
  	assert @material.save, "No se ha almacenado un material correcto"
  end

  test "inserta incorrecto sin nombre" do
  	@material = Material.new
  	@material = materiales(:incorrecto_sin_nombre)
  	assert !@material.save, "Se almacano un material sin nombre"
  end

  test "inserta incorrecto sin descripcion" do
  	@material = Material.new
  	@material = materiales(:incorrecto_sin_descripcion)
  	assert !@material.save, "Se almaceno un material sin descripcion"
  end

  test "inserta incorrecto sin cantidad" do
  	@material = Material.new
  	@material = materiales(:incorrecto_sin_cantidad)
  	assert !@material.save, "Se almaceno un material sin cantidad"
  end

  test "inserta incorrecto sin unidad" do
  	@material = Material.new
  	@material = materiales(:incorrecto_sin_unidad)
  	assert !@material.save, "Se almaceno un material sin unidad"
  end

  test "inserta incorrecto sin costo unidad" do
  	@material = Material.new
  	@material = materiales(:incorrecto_sin_costo_unidad)
  	assert !@material.save, "Se almaceno un material sin costo unidad"
  end

  test "inserta incorrecto sin proveedor" do
  	@material = Material.new
  	@material = materiales(:incorrecto_sin_proveedor)
  	assert !@material.save, "Se almaceno un material sin proveedor"
  end
end
