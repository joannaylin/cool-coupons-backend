# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

isaac = User.create(name: "Isaac", username: "IsaacMedina", age: 18)
joanna = User.create(name: "Joanna", username: "JoannaLin", age: 25)

walmart = Business.create(name: "Walmart", location: "Chicago", business_type: "Retail")
target = Business.create(name: "Target", location: "Chicago", business_type: "Retail")
best_buy = Business.create(name: "Best Buy", location: "Chicago", business_type: "Electronics")
giordanos = Business.create(name: "Giordano's", location: "Chicago", business_type: "Restaurant")
apple = Business.create(name: "Apple", location: "Chicago", business_type: "Electronics")
microsoft = Business.create(name: "Microsoft", location: "Chicago", business_type: "Electronics")
starbucks = Business.create(name: "Starbucks", location: "Chicago", business_type: "Coffeehouse")
la_colombe = Business.create(name: "La Colombe", location: "Chicago", business_type: "Coffeehouse")
colective_coffee = Business.create(name: "Colectivo Coffee", location: "Chicago", business_type: "Coffeehouse")
costco = Business.create(name: "Costco", location: "Chicago", business_type: "Retail")
paulie_gees = Business.create(name: "Paulie Gee's", location: "Chicago", business_type: "Restaurant")

walmart_coupon_1 = Coupon.create(name: "Walmart - $5 off 50!", code: "WALM05", expiration_date: "2020-06-30", business: walmart)
walmart_coupon_2 = Coupon.create(name: "Walmart - 10% off Entire Purchase", code: "WALM10", expiration_date: "2020-06-10", business: walmart)
target_coupon_1 = Coupon.create(name: "Target - 15% off Entire Purchase", code: "SWEET15", expiration_date: "2020-06-10", business: target)
target_coupon_2 = Coupon.create(name: "Target - 20% off $100+ Purchase", code: "SWEET20", expiration_date: "2020-06-30", business: target)
best_buy_coupon_1 = Coupon.create(name: "Best Buy - $40 off $200+ Purchase", code: "TECH40", expiration_date: "2020-07-30", business: best_buy)
best_buy_coupon_2 = Coupon.create(name: "Best Buy - Save 20% Off Sale", code: "TECH20", expiration_date: "2020-07-20", business: best_buy)
giordanos_coupon_1 = Coupon.create(name: "Giordanos - $10 off Total Order", code: "SAVE10", expiration_date: "2020-06-15", business: giordanos)
giordanos_coupon_2 = Coupon.create(name: "Giordanos - 15% off Total Order", code: "SAVE15", expiration_date: "2020-06-30", business: giordanos)
apple_coupon_1 = Coupon.create(name: "Apple - Get $30 Gift Card with Purchase", code: "APP30", expiration_date: "2020-06-30", business: apple)
apple_coupon_2 = Coupon.create(name: "Apple - Get 10% Off", code: "APP10", expiration_date: "2020-06-10", business: apple)
microsoft_coupon_1 = Coupon.create(name: "Microsoft - Up to 10% off Any Purchase", code: "GIVE10", expiration_date: "2020-06-30", business: microsoft)
microsoft_coupon_2 = Coupon.create(name: "Microsoft - $40 off $150 Order", code: "GIVE40", expiration_date: "2020-06-10", business: microsoft)
starbucks_coupon_1 = Coupon.create(name: "Starbucks - BOGO 50% Off", code: "BOGO50", expiration_date: "2020-06-30", business: starbucks)
starbucks_coupon_2 = Coupon.create(name: "Starbucks - 5X Points", code: "EXTRA5", expiration_date: "2020-06-10", business: starbucks)
la_colombe_coupon_1 = Coupon.create(name: "La Colombe - 10% off First Order", code: "10OFF", expiration_date: "2020-06-30", business: la_colombe)
la_colombe_coupon_2 = Coupon.create(name: "La Colombe - 20% off Organic Coffees", code: "20OFF", expiration_date: "2020-06-10", business: la_colombe)
colective_coffee_coupon_1 = Coupon.create(name: "Colectivo Coffee - 15% off First Order", code: "15FORYOU", expiration_date: "2020-06-30", business: colective_coffee)
colective_coffee_coupon_2 = Coupon.create(name: "Colectivo Coffee - $5 off Any Purchase", code: "5COFFEE", expiration_date: "2020-06-10", business: colective_coffee)
costco_coupon_1 = Coupon.create(name: "Costco - $50 off $150 Purchase", code: "50FORYOU", expiration_date: "2020-06-30", business: costco)
costco_coupon_2 = Coupon.create(name: "Costco - Up to $30 off Select Apple Products", code: "30FORYOU", expiration_date: "2020-06-10", business: costco)
paulie_gees_coupon_1 = Coupon.create(name: "P. Gees - 10% off Total Order", code: "10PGEES", expiration_date: "2020-06-30", business: paulie_gees)
paulie_gees_coupon_2 = Coupon.create(name: "P. Gees - $15 off $50", code: "15PGEES", expiration_date: "2020-06-10", business: paulie_gees)


40.times do 
  Like.create(coupon: Coupon.all.sample)
end