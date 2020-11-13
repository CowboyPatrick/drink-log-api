json.array! @drinks do |drink|
  json.extract! drink, :id, :name, :category, :image_url
  json.reviews drink.reviews do |review|
  json.extract! review, :id, :content
  end
end
