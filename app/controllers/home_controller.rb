class HomeController < ApplicationController

skip_before_action :authenticate_user!


  def index
    @new_freelancers = FreelancerProfile.last(3)
    @new_gig = Gig.last(2)
  end

end
