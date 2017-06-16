require 'cost_amount'

class ChargesController < ApplicationController
  def create
    customer = Stripe::Customer.create(
      email: current_user.email,
      card:  params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer:    customer.id,
      amount:      Amount.default,
      description: "BigMoney Membership - #{current_user.email}",
      currency:    'usd'
    )

    flash[:notice] = "You are now a premium user, #{current_user.email}, congratulations!"
    current_user.premium!
    redirect_to wikis_url

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_charge_path

  end

  def new
    @stripe_btn_data = {
      key: "#{Rails.configuration.stripe[:publishable_key] }",
      description: "BigMoney Membership - #{current_user.email}",
      amount: Amount.default
    }
  end
end
