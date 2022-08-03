puts "Deleting Restaurant/Meal/Menu/Liquor data..."
Restaurant.destroy_all
Meal.destroy_all
Menu.destroy_all
Liquor.destroy_all


puts "Creating Restaurants..."
edmunds_steakhouse = Restaurant.create(name: "Edmund's Steakhouse", rating: "★★★★★", city: "NYC", price: "★★★★")
ryans_chophouse = Restaurant.create(name: "Ryan's Chophouse", rating: "★★★★", city: "Fresh Meadows", price: "★★★★★")
chases_tacos = Restaurant.create(name: "Taco Hub", rating: "★★", city: "Seattle", price: "★★")
lanis_diner = Restaurant.create(name: "Lani's Diner", rating: "★★★★", city: "Seattle", price: "★★★")
chicken_spot = Restaurant.create(name: "Chicken Spot", rating: "★★★", city: "Los Angeles", price: "★★")
bon_agneau = Restaurant.create(name: "Bon Agneau", rating: "★★★★", city: "Louisiana", price: "★★★★")
gian_carlos = Restaurant.create(name: "Gian Carlos", rating: "★★★★★", city: "Atlanta", price: "★★★★★")
yalleys_restaurant = Restaurant.create(name: "Yalleys Restaurant", rating: "★★★★", city: "Atlanta", price: "★★★")


puts "Creating Menus..."
# rest_id = 1
# 8.times do 
    
    # Menu.create(
        
    #     cuisine: Faker::Food.ethnic_category,
    #     restaurant_id: rest_id
    # )
    # rest_id += 1
# end
    Menu.create(cuisine: Faker::Food.ethnic_category, restaurant_id: edmunds_steakhouse.id)
    Menu.create(cuisine: Faker::Food.ethnic_category, restaurant_id: ryans_chophouse.id)
    Menu.create(cuisine: Faker::Food.ethnic_category, restaurant_id: chases_tacos.id)
    Menu.create(cuisine: Faker::Food.ethnic_category, restaurant_id: lanis_diner.id)
    Menu.create(cuisine: Faker::Food.ethnic_category, restaurant_id: chicken_spot.id)
    Menu.create(cuisine: Faker::Food.ethnic_category, restaurant_id: bon_agneau.id)
    Menu.create(cuisine: Faker::Food.ethnic_category, restaurant_id: gian_carlos.id)
    Menu.create(cuisine: Faker::Food.ethnic_category, restaurant_id: yalleys_restaurant.id)


puts "Creating Meals..."
100.times do
    Meal.create(
        name: Faker::Food.dish,
        price: rand(1..20),
        rating: "★".*(rand(1..5)), 
        restaurant_id: rand(1..8),
        menu_id: rand(1..8),
        description: Faker::Food.description
    )
end

puts "Creating Liquors..."

40.times do
    Liquor.create(
        name: Faker::Beer.name,
        price: rand(1..14),
        brand: Faker::Beer.brand,
        restaurant_id: rand(1..8),
        menu_id: rand(1..8)
    )
end

puts "✅ Done seeding!"
