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
fogo_de_chao = Business.create(name: "Fogo de Chao", location: "Chicago", business_type: "Restaurant")

walmart_coupon_1 = Coupon.create(name: "walmart_coupon_1", code: "15FORYOU", expiration_date: "2020-06-30", business: walmart)
walmart_coupon_2 = Coupon.create(name: "walmart_coupon_2", code: "SAVE20", expiration_date: "2020-06-10", business: walmart)
target_coupon_1 = Coupon.create(name: "target_coupon_1", code: "15OFF", expiration_date: "2020-06-10", business: target)
target_coupon_2 = Coupon.create(name: "target_coupon_2", code: "GIVE20", expiration_date: "2020-06-30", business: target)
best_buy_coupon_1 = Coupon.create(name: "best_buy_coupon_1", code: "GIVE10", expiration_date: "2020-07-30", business: best_buy)
best_buy_coupon_2 = Coupon.create(name: "best_buy_coupon_2", code: "HALFOFF", expiration_date: "2020-07-20", business: best_buy)
giordanos_coupon_1 = Coupon.create(name: "giordanos_coupon_1", code: "SAVE30", expiration_date: "2020-06-15", business: giordanos)
giordanos_coupon_2 = Coupon.create(name: "giordanos_coupon_2", code: "15FORYOU", expiration_date: "2020-06-30", business: giordanos)
fogo_de_chao_coupon_1 = Coupon.create(name: "fogo_de_chao_coupon_1", code: "SAVE20", expiration_date: "2020-06-30", business: fogo_de_chao)
fogo_de_chao_coupon_2 = Coupon.create(name: "fogo_de_chao_coupon_2", code: "SAVE50", expiration_date: "2020-07-30", business: fogo_de_chao)

20.times do 
  Like.create(coupon: Coupon.all.sample)
end