json.extract! transaction, :id, :product_id, :amount, :transaction_type, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
