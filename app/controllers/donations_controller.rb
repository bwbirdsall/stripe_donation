class DonationsController < ApplicationController
  def new
    @non_profit = NonProfit.find(params[:non_profit_id])
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donations_params)
    if @donation.save
      non_profit = NonProfit.find(@donation.non_profit_id)
      redirect_to non_profit_path(non_profit), alert: "Your tax break of #{@donation.amount} has been created!"
    else
      render 'new'
    end
  end

  private

  def donations_params
    params.require(:donation).permit(:name, :email, :non_profit_id, :amount)
  end
end
