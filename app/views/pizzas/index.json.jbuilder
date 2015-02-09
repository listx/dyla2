json.array!(@pizzas) do |pizza|
  json.extract! pizza, :id, :name
  json.url pizza_url(pizza, format: :json)
end
