json.extract! product, :id, :name, :minimum_stock, :stock, :created_at, :updated_at
json.url product_url(product, format: :json)
