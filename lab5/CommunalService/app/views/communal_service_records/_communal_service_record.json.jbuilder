json.extract! communal_service_record, :id, :owner_name, :owner_last_name, :service_type, :city, :street, :house, :apartment, :created_at, :updated_at
json.url communal_service_record_url(communal_service_record, format: :json)
