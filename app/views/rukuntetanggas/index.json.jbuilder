json.array!(@rukuntetanggas) do |rukuntetangga|
  json.extract! rukuntetangga, :id, :name
  json.url rukuntetangga_url(rukuntetangga, format: :json)
end
