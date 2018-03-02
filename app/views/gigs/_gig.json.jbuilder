json.extract! gig, :id, :user_id, :gig_type_id, :name, :description, :deadline, :status, :created_at, :updated_at
json.url gig_url(gig, format: :json)
