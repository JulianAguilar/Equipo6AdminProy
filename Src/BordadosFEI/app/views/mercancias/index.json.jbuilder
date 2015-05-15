json.array!(@mercancias) do |mercancia|
  json.extract! mercancia, :id, :Descripcion, :Cantidad, :Terminado, :Producto_id, :Pedido_id
  json.url mercancia_url(mercancia, format: :json)
end
