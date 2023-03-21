class Pizza4 < ApplicationRecord
    has_many :restaurantPizzas
    has_many :restaurants, through: :restaurantPizzas
end
