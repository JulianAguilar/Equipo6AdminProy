json.array!(@productos) do |producto|
  json.extract! producto, :id, :Nombre, :Descripcion, :Costo
  json.url producto_url(producto, format: :json)
end
