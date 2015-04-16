json.array!(@mercancias) do |mercancia|
  json.extract! mercancia, :id, :Nombre, :Descripcion, :Cantidad, :Precio
  json.url mercancia_url(mercancia, format: :json)
end
