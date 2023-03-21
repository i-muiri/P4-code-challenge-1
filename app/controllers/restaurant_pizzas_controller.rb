class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    

    def create

        restpizza = RestaurantPizza.create! (restpizza_params)
        render json: restpizza.pizza4, status: :created
        
    end




    private
    def restpizza_params
        params.permit(:price, :pizza4_id, :restaurant_id)
    end

    def render_unprocessable_entity_response (invalid)
        render json: {errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
