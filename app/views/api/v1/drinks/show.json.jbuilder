# show.json.jbuilder


json.extract! @drink, :id, :name, :category

# TODO: Add this in to also extract reviews.  Change to @drink.reviews
json.reviews @drink.reviews do |review|
  json.extract! review, :id, :content
end
