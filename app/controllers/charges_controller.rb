class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = 500
    @gig = Gig.find(params[:gig_id])

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Gig posting on digital market',
      :currency    => 'aud'
    )

    if charge
      if charge[:paid] == true
        @gig.update(status: 'paid')
        redirect_to @gig.user.org_profile, notice: 'Gig was successfully created.'
      end
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path

  end
end
