class Pizza4sController < ApplicationController

    def index
        pizzas = Pizza4.all
        render json: pizzas
    end
end
