class Enquiry < ApplicationRecord
  validates :name, :email, :message, presence: true

  after_commit :send_emails

def send_emails
  EnquiryMailer.response(id).deliver_now
  EnquiryMailer.received(id).deliver_now
end

end
