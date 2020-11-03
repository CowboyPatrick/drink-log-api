json.array! @drinks do |drink|
  json.extract! drink, :id, :name, :category
  json.reviews drink.reviews do |review|
  json.extract! review, :id, :content
  end
end
