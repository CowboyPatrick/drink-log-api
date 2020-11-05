# require 'rest-client'
class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  # skip_before_action :verify_authenticity_token, only: :home
  # skip_before_action :verify_authenticity_token, only: :home
  # before_action :authenticate_user!
  def home
  end

  def get_request
    response = RestClient.get("http://localhost:3000/api/v1/drinks/",
                              accept: "application/json",
                              'X-User-email'=> "patrick@patrick.com",
                              'X-User-token' => "2feWfuuQsneu2DhtyAsi")
    @get_data = JSON.parse(response)
    render :home
  end
end


# I want a button that will display a JSON on the right side of my page.
# So on the left I will create a group showing possible endpoints
