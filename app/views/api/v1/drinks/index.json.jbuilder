json.array! @drinks do |drink|
  json.extract! drink, :id, :name, :category
end
