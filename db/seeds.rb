require 'faker'

user1 = User.create(username: "silviu", password_hash: "$2a$10$9PORMrtKX6oF7Ex5vvULf.rXenLZ9Sl/l.hJttu8zVgbljcldm5tO") #pass: sancrai
user2 = User.create(username: "anca", password_hash: "$2a$10$P1U1H/6qCDa6vMKDNrCvweupa7/6Wl5OjFC2YzIUsm1gsyQFbgM4O") #pass: calorifer
user3 = User.create(username: "oana", password_hash: "$2a$10$WLgFYuYqRQADhh/6uwDnq.et29cDWBJue9aq8ugs041JBDD64MsRq") #pass: morcovel



# item1 = Item.create(name: "Tv for sale!", description: "zxcvbnmasdfghjklwertyuiopzxcvbnmasdfghjklertyui", start_date: "2016-06-01", end_date: "2016-08-25", user_id: 1)
# item2 = Item.create(name: "house in Glenview", description: "zxcvbnmasdfghjklwertyuiopzxcvbnmasdfghjklertyui", start_date: "2016-08-05", end_date: "2016-08-30", user_id: 3)
# item3 = Item.create(name: "Travel bags", description: "zxcvbnmasdfghjklwertyuiopzxcvbnmasdfghjklertyui", start_date: "2016-08-01", end_date: "2016-09-26", user_id: 2)
# item4 = Item.create(name: "set of cups", description: "zxcvbnmasdfghjklwertyuiopzxcvbnmasdfghjklertyui", start_date: "2016-05-11", end_date: "2016-09-15", user_id: 1)
# item5 = Item.create(name: "Garage", description: "zxcvbnmasdfghjklwertyuiopzxcvbnmasdfghjklertyui", start_date: "2016-04-03", end_date: "2016-11-17", user_id: 2)

# bid1 = Bid.create(user_id: 3, item_id: 2, value: 100)
# bid1 = Bid.create(user_id: 1, item_id: 1, value: 80)
# bid1 = Bid.create(user_id: 2, item_id: 3, value: 50)
# bid1 = Bid.create(user_id: 3, item_id: 1, value: 3)
# bid1 = Bid.create(user_id: 1, item_id: 2, value: 30)
# bid1 = Bid.create(user_id: 3, item_id: 3, value: 10)

10.times do
 category = { title: Faker::Lorem.sentence }
 Category.create(category)
end

10.times do
  service = { title: Faker::Lorem.word,
              description: Faker::Lorem.paragraph,
              contact_info: Faker::Internet.email,
              category_id: rand(1..10),
              user_id: rand(1..3)
  }
  Service.create(service)
end
