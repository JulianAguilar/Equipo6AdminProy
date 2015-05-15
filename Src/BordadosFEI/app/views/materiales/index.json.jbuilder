json.array!(@materiales) do |material|
  json.extract! material, :id, :Nombre, :Descripcion, :Cantidad, :Unidad, :CostoUnidad, :CostoTotal, :Proveedor_id
  json.url material_url(material, format: :json)
end
