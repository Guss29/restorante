json.extract! insumo, :id, :nombre, :cantidad, :unidadmedida, :created_at, :updated_at
json.url insumo_url(insumo, format: :json)