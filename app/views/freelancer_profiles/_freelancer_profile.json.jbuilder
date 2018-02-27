json.extract! freelancer_profile, :id, :user_id, :first_name, :last_name, :phone, :suburb, :postcode, :country, :latitude, :longitude, :picture, :bio, :created_at, :updated_at
json.url freelancer_profile_url(freelancer_profile, format: :json)
