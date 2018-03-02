json.extract! proposal, :id, :user_id, :gig_id, :content, :status, :created_at, :updated_at
json.url proposal_url(proposal, format: :json)
