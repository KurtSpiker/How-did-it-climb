# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Route.destroy_all
Gym.destroy_all

boldr = Gym.create(name: "Boldr")
Route.create([{description: "route 1", gym: boldr, colour: "green", grade: "v1" }, {description: "route 2", gym: boldr, colour: "blue", grade: "v9" }, {gym: boldr, colour: "green", grade: "v5" }])
