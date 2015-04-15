json.array!(@materiales) do |material|
  json.extract! material, :id, :Nombre, :Descripcion, :cantidad
  json.url material_url(material, format: :json)
end
