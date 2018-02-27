json.extract! customer, :id, :numero_cedula, :nombre, :telefono, :direccion, :correo, :created_at, :updated_at
json.url customer_url(customer, format: :json)
