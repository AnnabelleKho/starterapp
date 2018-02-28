json.extract! portfolio_item, :id, :user_id, :title, :description, :link, :image, :position, :slug, :created_at, :updated_at
json.url portfolio_item_url(portfolio_item, format: :json)
