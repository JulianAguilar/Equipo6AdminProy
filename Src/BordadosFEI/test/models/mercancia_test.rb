require 'test_helper'

class MercanciaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	test "inserta mercancia correcta" do
		mercancia = Mercancia.new
		mercancia = mercancias(:correcto)
		assert mercancia.save, "No se ha almacenado una mercancia correcta"
	end

	test "inserta mercancia incorrecta sin nombre " do
		mercancia = Mercancia.new
		mercancia = mercancias(:incorrecto_sin_nombre)
		assert !mercancia.save, "Se ha almacenado una mercancia sin nombre"
	end

	test "inserta mercancia sin descripcion" do
		mercancia = Mercancia.new
		mercancia = mercancias(:incorrecto_sin_descripcion)
		assert !mercancia.save, "Se ha almacenado una mercancia sin descripcion"
	end

	test "inserta mercancia sin cantidad" do
		mercancia = Mercancia.new
		mercancia = mercancias(:incorrecto_sin_cantidad)
		assert !mercancia.save, "se ha almacenada mercancia sin cantidad"
	end

	test "inserta mercancia sin precio" do
		mercancia = Mercancia.new
		mercancia = mercancias(:incorrecto_sin_precio)
		assert !mercancia.save, "se ha almacenada mercancia sin precio"
	end

	test "inserta mercancia con cantidad incorrecta" do
		mercancia = Mercancia.new
		mercancia = mercancias(:incorrecto_cantidad_erronea)
		assert !mercancia.save, "se ha almacenado mercancia con la cantidad erronea"
	end

	test "inserta mercancia con precio incorrecto" do
		mercancia = Mercancia.new
		mercancia = mercancias(:incorrecto_precio_erroneo)
		assert !mercancia.save, "se ha almacenado mercancia con el precio incorrecto"
	end



end
