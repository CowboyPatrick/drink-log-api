class Api::V1::DrinksController < Api::V1::BaseController

  before_action :set_drink, only: [ :show, :update, :destroy ]

  def index
    @drinks = policy_scope(Drink)
    if user_signed_in?
    else
      redirect_to root_path
    end
  end

  def show
  end

  def update
    if @drink.update(drink_params)
      render :show
    else
      render_error
    end
  end

  def create
    @drink = Drink.new(drink_params)
    @drink.user = current_user
    authorize @drink
    if @drink.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @drink.destroy
    head :no_content
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :category, :photo, :image)
  end

  def set_drink
    @drink = Drink.find(params[:id])
    authorize @drink
  end

  def render_error
    render json: { errors: @drink.errors.full_messages },
      status: :unprocessable_entity
  end
end
