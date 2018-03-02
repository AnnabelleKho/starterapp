json.extract! org_profile, :id, :user_id, :name, :logo, :contact_name, :contact_phone, :description, :slug, :link, :address, :suburb, :state, :postcode, :country, :longitude, :latitude, :created_at, :updated_at
json.url org_profile_url(org_profile, format: :json)
