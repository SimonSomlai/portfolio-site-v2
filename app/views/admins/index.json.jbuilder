json.array!(@admins) do |admin|
  json.extract! admin, :id, :username, :email, :password, :password_confirmation
  json.url admin_url(admin, format: :json)
end
