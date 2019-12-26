json.extract! admin, :id, :admin_id, :password_digest, :name, :root, :created_at, :updated_at
json.url admin_url(admin, format: :json)
