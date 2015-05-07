json.array!(@materiales) do |material|
  json.extract! material, :id, :Nombre, :Descripcion, :Cantidad, :Unidad, :Costo_Unidad, :Costo_Total, :proveedor_id
  json.url material_url(material, format: :json)
end
