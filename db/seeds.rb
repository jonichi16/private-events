# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |i|
  User.create(
    email: "user#{i+1}@user.com",
    password: "111111",
    password_confirmation: "111111",
    username: "user_#{i+1}",
    first_name: "First #{i+1}",
    last_name: "Last #{i+1}"
  )
  p "User#{i+1} created!"
end

10.times do |i|
  Event.create(
    title: "Event #{i+1}",
    description: "Some Event",
    date_of_event: Time.now + rand(-5..5).day,
    location: "Somewhere",
    creator_id: rand(0..9)
  )
  p "Event#{i+1} created!"
end
