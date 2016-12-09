json.extract! empleado, :id, :rut, :nombre, :telefono, :direccion, :cargo, :turno, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)