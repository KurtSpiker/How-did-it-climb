# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Route.destroy_all
Gym.destroy_all
User.destroy_all
Climb.destroy_all

boldr = Gym.create(name: "Boldr")
Route.create([
  {description: "route 1", gym: boldr, colour: "green", grade: "v1" },
  {description: "route 2", gym: boldr, colour: "blue", grade: "v9" },
  {gym: boldr, colour: "green", grade: "v5" }
])

coyote = Gym.create(name: "Coyote")
c_route = Route.create!({description: "coyote route", gym: coyote, colour: "white", grade: "v1"})

kurt = User.create!(email: "kurt@hdic.com", password: "password123", password_confirmation: "password123")
jarrett = User.create!(email: "jarrett@hdic.com", password: "password123", password_confirmation: "password123")

Climb.create!([
  {comment: "so cool!", attempts: 5, topped: true, zoned: true, route: c_route, user: kurt},
  {topped: false, route: c_route, user: jarrett}
])
