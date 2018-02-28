class PortfolioItem < ApplicationRecord
  belongs_to :user

  validates :title, :description, :image, presence: true

  extend FriendlyId
  friendly_id :title, use: :slugged
  mount_uploader :image, PortfolioItemImageUploader


  def self.ordered_by_position
    order(position: :asc)
  end
end
