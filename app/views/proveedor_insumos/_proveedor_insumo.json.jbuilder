json.extract! proveedor_insumo, :id, :precio, :proveedor_id, :insumo_id, :created_at, :updated_at
json.url proveedor_insumo_url(proveedor_insumo, format: :json)