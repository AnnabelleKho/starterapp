class OrgProfile < ApplicationRecord
  belongs_to :user

  validates :name, :contact_name, :address, :suburb, :state, :postcode, :country, :contact_phone, presence: true

  extend FriendlyId
  friendly_id :name, use: :slugged
  geocoded_by :full_address
  after_validation :geocode
  mount_uploader :logo, PortfolioItemImageUploader


  def full_address
    [address, suburb, state, postcode, country]. join(', ')
  end

end
