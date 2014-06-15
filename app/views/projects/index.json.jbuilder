json.array!(@projects) do |project|
  json.extract! project, :id, :link
  json.url project_url(project, format: :json)
end
