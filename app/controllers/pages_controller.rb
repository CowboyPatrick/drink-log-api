class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  # skip_before_action :verify_authenticity_token, only: :home
  # skip_before_action :verify_authenticity_token, only: :home
  # before_action :authenticate_user!
  def home
    redirect_to "https://www.cnn.com"
  end
end
