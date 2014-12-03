json.array!(@procedures) do |procedure|
  json.extract! procedure, :id, :nombre, :duracion, :costo, :vigencia, :contacto , :dependenrequieremenprocedure
  json.url procedure_url(procedure, format: :json)
end
