class OrdersController < ApplicationController
    get "/orders" do
        orders = Order.all
        orders.to_json
    end

    get "/orders" do
        orders = Order.meal.all
        orders.to_json
    end
   
    #creates a restaurant
    post "/orders" do
        post_order = Order.meal.create(params)
        post_order.to_json
    end
    # delete a order
    delete '/orders/meals/:id' do
        delete_order = Order.meal.find(params[:id])
        delete_order.destroy
        delete_order.to_json
    end

    # updates the price attribute
    patch '/orders/meals/:id' do
        patch_order = Order.meal.find(params[:id])
        patch_order.update(
            params
            # price: params[:price]
        )
        patch_order.to_json
    end
end