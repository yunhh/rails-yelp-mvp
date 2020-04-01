puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'french' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ",
   category: 'italian' }
dinnoom = { name: "Dinnoom", address: "10 picadily St, London E1 7JE", category: 'chinese' }
rishnom = { name: "Rishnom", address: "3 levrette St, London F2 7JE", category: 'belgian' }
dashroom = { name: "Dashroom", address: "6 round St, London E2 7JE", category: 'japanese' }

[ dishoom, pizza_east, dinnoom, rishnom, dashroom].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
