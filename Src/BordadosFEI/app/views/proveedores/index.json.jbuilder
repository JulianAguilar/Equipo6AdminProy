json.array!(@proveedores) do |proveedor|
  json.extract! proveedor, :id, :RFC, :Nombre, :Direccion, :Telefono, :Producto
  json.url proveedor_url(proveedor, format: :json)
end
