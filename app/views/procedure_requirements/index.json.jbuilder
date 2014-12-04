json.array!(@procedure_requirements) do |procedure_requirement|
  json.extract! procedure_requirement, :id , :procedure_id, :requirement_id
  json.url dependency_url(procedure_requirement, format: :json)
end
