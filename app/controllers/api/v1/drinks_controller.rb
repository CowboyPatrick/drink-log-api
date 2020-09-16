class Api::V1::DrinksController < Api::V1::BaseController
  before_action :set_drink, only: [ :show ]

  def index
    @drinks = policy_scope(Drink)
  end

  def show
  end

  private

  def set_drink
    @drink = Drink.find(params[:id])
    authorize @drink
  end
end
