json.extract! proveedor, :id, :rut, :nombre, :direccion, :telefono, :mail, :created_at, :updated_at
json.url proveedor_url(proveedor, format: :json)