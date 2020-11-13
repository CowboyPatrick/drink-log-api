include CloudinaryHelper

class Drink < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  def image_url
    photo.attached? ? cl_image_path(photo.key) : ""
  end
end
