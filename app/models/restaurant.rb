class Restaurant < ApplicationRecord
    has_many :restaurantPizzas, dependent: :destroy
    has_many :Pizza4s, through: :restaurantPizzas

end
