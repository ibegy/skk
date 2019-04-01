# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  id: 200,
  name: "Admin",
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password"
)
user.save!

Ticket.create!([{
  operator: "AutoTrans",
  destination: "Zadar",
  amount: "2",
  price: "200",
  departure: "2019-04-26 11:50:32",
  arrival: "2019-04-26 13:50:32",
},
{
  operator: "CroatiaBus",
  destination: "Split",
  amount: "2",
  price: "200",
  departure: "2019-03-26 11:50:32",
  arrival: "2019-03-26 13:50:32",
},
{
  operator: "AutoTrans",
  destination: "Lovran",
  amount: "200",
  price: "200",
  departure: "2019-06-26 11:50:32",
  arrival: "2019-06-26 13:50:32",
},
{
  operator: "Flixbus",
  destination: "Dubrovnik",
  amount: "0",
  price: "200",
  departure: "2019-03-26 11:50:32",
  arrival: "2019-03-26 13:50:32",
},
{
  operator: "AutoTrans",
  destination: "Zadar",
  amount: "2",
  price: "200",
  departure: "2019-12-26 11:50:32",
  arrival: "2019-12-26 13:50:32",
},
{
  operator: "AutoTrans",
  destination: "Zadar",
  amount: "2",
  price: "200",
  departure: "2019-12-26 11:50:32",
  arrival: "2019-12-26 13:50:32",
}])