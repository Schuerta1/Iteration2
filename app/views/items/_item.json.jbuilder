json.extract! item, :id, :price, :description, :title, :size, :clothingType, :color, :created_at, :updated_at
json.url item_url(item, format: :json)
