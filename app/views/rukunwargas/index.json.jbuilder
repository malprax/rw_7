json.array!(@rukunwargas) do |rukunwarga|
  json.extract! rukunwarga, :id, :name
  json.url rukunwarga_url(rukunwarga, format: :json)
end
