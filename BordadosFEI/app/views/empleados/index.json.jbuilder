json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :Nombre, :Apellido_paterno, :Apellido_materno, :Direccion, :Telefono, :Puesto, :Nombre_usuario, :Password
  json.url empleado_url(empleado, format: :json)
end
