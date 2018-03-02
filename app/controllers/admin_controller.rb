class AdminController < ApplicationController
  def index
    @enquiries = Enquiry.reverse_chron_order.first(10)

  end

  def show
    @freelancer_profile = Freelancer_portfolio_picture.picture
  end
end
