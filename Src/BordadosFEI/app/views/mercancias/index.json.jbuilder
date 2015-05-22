json.array!(@mercancias) do |mercancia|
  json.extract! mercancia, :id, :Descripcion, :Cantidad, :Pedido_id, :Producto_id
  json.url mercancia_url(mercancia, format: :json)
end
