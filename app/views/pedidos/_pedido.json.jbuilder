json.extract! pedido, :id, :tipopedido, :fecha, :empleado_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)