json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :Nombre, :Apellido_paterno, :Apellido_materno, :Direccion, :Telefono, :Correo
  json.url cliente_url(cliente, format: :json)
end
