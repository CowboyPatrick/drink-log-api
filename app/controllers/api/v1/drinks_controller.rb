class Api::V1::DrinksController < Api::V1::BaseController
  def index
    @restaurants = policy_scope(Drink)
  end
end
