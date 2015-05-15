json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :FechaPedido, :FechaEntrega, :Cliente_id
  json.url pedido_url(pedido, format: :json)
end
