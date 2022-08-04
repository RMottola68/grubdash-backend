class RestaurantsController < ApplicationController

    get "/restaurants" do
      restaurants = Restaurant.all
      restaurants.to_json
    end

    get "/restaurants/:id/menu" do
        restaurant_menu = Restaurant.find(params[:id]).menu
        restaurant_menu.to_json
    end
   
    get "/restaurants/:id/menu/meals" do
        menu = Restaurant.find(params[:id]).menu.meals
        menu.to_json
    end

    get "/restaurants/:id" do
        restaurant = Restaurant.find(params[:id])
        restaurant.to_json
    end

    #creates a restaurant
    post "/restaurants" do
        post_restaurant = Restaurant.create(params)
        post_restaurant.to_json
    end
    # delete a restaurant
    delete '/restaurants/:id' do
        delete_restaurant = Restaurant.find(params[:id])
        delete_restaurant.destroy
        delete_restaurant.to_json
    end

    # updates the price attribute
    patch '/restaurants/:id' do
        patch_restaurant = Restaurant.find(params[:id])
        patch_restaurant.update(
            params
            # price: params[:price]
        )
        patch_restaurant.to_json
    end
  end

  