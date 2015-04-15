json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :email, :Nombre, :Apellido_paterno, Apellido_materno, :Direccion, :Telefono, :Puesto
  json.url empleado_url(empleado, format: :json)
end
