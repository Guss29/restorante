json.extract! plato, :id, :nombre, :precio, :tipo, :descripcion, :created_at, :updated_at
json.url plato_url(plato, format: :json)