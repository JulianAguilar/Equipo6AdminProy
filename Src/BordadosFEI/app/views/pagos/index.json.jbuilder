json.array!(@pagos) do |pago|
  json.extract! pago, :id, :FechaPago, :Subtotal, :Total, :Pedido_id
  json.url pago_url(pago, format: :json)
end
