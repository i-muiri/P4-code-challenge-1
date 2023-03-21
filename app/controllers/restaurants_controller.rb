class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_response_not_found
    
        def index
    
            restaurants = Restaurant.all
            render json: restaurants
    
        end
    
        def show 
            restaurant = get_restaurant
            render json: restaurant, include_pizza4s: true
    
        end
    
        def destroy
            restaurant = get_restaurant
            restaurant.destroy
            head :no_content
    
        end
    
        private
    
        def render_response_not_found
            render json:{error: "Restaurant Not Found"}, status: :not_found
        end
    
        def get_restaurant
            Restaurant.find(params[:id])
        end
    end