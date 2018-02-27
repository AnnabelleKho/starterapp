class FreelancerProfile < ApplicationRecord
  belongs_to :user

validates :first_name, :last_name, :suburb, :postcode, :country, :bio, presence: true

  mount_uploader :picture, FreelancerProfilePictureUploader
  geocoded_by :address
  after_validation :geocode


extend FriendlyId
friendly_id :slug_candidates, use: :slugged

def slug_candidates
  [
    [:full_name, :suburb, :country],
    [:full_name, :suburb, :postcode, :country]
  ]

end

  def address
    [suburb, postcode, country].join(', ')
  end




def full_name
  [first_name, last_name].join(' ')
end
end
