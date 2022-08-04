class OrdersController < ApplicationController
    
    get "/orders" do
        orders = Order.all
        orders.to_json(include: :meals)
    end
   
    

    #creates a restaurant
    post "/orders" do
        post_order = Order.create(params)
        post_order.to_json
    end
    # delete a order
    delete '/orders/:id' do
        delete_order = Order.find(params[:id])
        delete_order.destroy
        delete_order.to_json
    end

    # updates the price attribute
    patch '/orders/:id' do
        patch_order = Order.find(params[:id])
        patch_order.update(
            params
        )
        patch_order.to_json
    end
end