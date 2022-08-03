class RestaurantsController < ApplicationController

    get "/restaurants" do
      restaurants = Restaurant.all
      restaurants.to_json
    end

    get "/restaurants/:id/menu" do
        restaurant_menu = Restaurant.get_restaurant_id(params[:id].to_i).menu
        restaurant_menu.to_json
    end
   
    get "/restaurants/:id/menu/meals" do
        menu = Restaurant.get_restaurant_id(params[:id].to_i).menu.get_meals
        menu.to_json
    end

    get "/restaurants/:id" do
        restaurant = Restaurant.find(params[:id])
        restaurant.to_json
    end

    post "/restaurants" do
        post_restaurant = Restaurant.create(params)
        post_restaurant.to_json
    end
    
    delete '/restaurants/:id' do
        delete_restaurant = Restaurant.find(params[:id])
        delete_restaurant.destroy
        delete_restaurant.to_json
    end


    # private

    # def restaurant_params
    #     params.permit(:name, :rating, :city, :price)
    # end
  end

  