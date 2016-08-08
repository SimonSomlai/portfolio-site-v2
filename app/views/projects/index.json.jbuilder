json.array!(@projects) do |project|
  json.extract! project, :id, :title, :subtitle, :description, :features, :link
  json.url project_url(project, format: :json)
end
