# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
restaurants = [
  { name: "Sixty Vines", address: "Orlando", category: "american" },
  { name: "Prato", address: "Rome", category: "italian" },
  { name: "Santiagos", address: "Madrid", category: "spanish" },
  { name: "Kabooki", address: "Tokyo", category: "japanese" },
  { name: "Domu", address: "Shanghai", category: "chinese" }
]

restaurants.each { |r| Restaurant.create(r) }
