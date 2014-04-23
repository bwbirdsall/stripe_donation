class NonProfitsController < ApplicationController
  def index
    @non_profits = NonProfit.all
  end

  def new
    @non_profit = NonProfit.new
  end

  def create
    @non_profit = NonProfit.new(non_profit_params)
    if @non_profit.save
      redirect_to non_profits_path, notice: "Non-Profit Added to the System"
    else
      render 'new'
    end
  end

  def show
    @non_profit = NonProfit.find(params[:id])
  end

  def edit
    @non_profit = NonProfit.find(params[:id])
  end

  def update
    @non_profit = NonProfit.find(params[:id])
    if @non_profit.update(non_profit_params)
      redirect_to non_profit_path(@non_profit), notice: "Non-Profit Information Duly Updated"
    else
      render 'edit'
    end
  end

  def destroy
    @non_profit = NonProfit.find(params[:id])
    @non_profit.destroy
    redirect_to non_profits_path, notice: "One Noble Tax Break is Now No More"
  end

private
  def non_profit_params
    params.require(:non_profit).permit(:name, :description)
  end

end
