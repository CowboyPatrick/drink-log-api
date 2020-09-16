# show.json.jbuilder


json.extract! @drink, :id, :name, :category

# TODO: Add this in to also extract reviews.  Change to @drink.reviews
# json.comments @restaurant.comments do |comment|
#   json.extract! comment, :id, :content
# end
