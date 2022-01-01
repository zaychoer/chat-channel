# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Channel.insert_all([{name: "general"}, {name: "random"}])

Channel.all.pluck(:id) => [id_1, id_2]

Message.insert_all([
  {content: "Hey, when is Ruby 3.1 coming out?", author: "Bob", channel_id: id_1},
  {content: "No idea", author: "Chris", channel_id: id_1},
  {content: "How are you?", author: "Alice", channel_id: id_2},
  {content: "Mfine", author: "Jack", channel_id: id_2},
])