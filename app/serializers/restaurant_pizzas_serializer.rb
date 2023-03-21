class RestaurantPizzasSerializer < ActiveModel::Serializer
  attributes :id, :price, :pizza4_id, :restaurant_id
end
