json.array!(@inspectors) do |inspector|
  json.extract! inspector, :id, :nombre, :vigencia, :materia, :supervisor, :contacto, :foto
  json.url inspector_url(inspector, format: :json)
end
