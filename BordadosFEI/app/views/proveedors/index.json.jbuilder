json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :Nombre, :Direccion, :Telefono, :Correo, :RFC
  json.url proveedor_url(proveedor, format: :json)
end
