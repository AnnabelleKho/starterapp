class Gig < ApplicationRecord
  belongs_to :user
  belongs_to :gig_type

  validates :name, :description, :deadline, presence: true
  validate :is_deadline_more_than_thirty_days?

  before_create :set_status

def set_status
  status = 'pending'
end

  def is_deadline_more_than_thirty_days?
    if deadline < Date.today + 30.days
      errors.add(:deadline, "must be more than 30 days in the future.")
    end
  end
end
