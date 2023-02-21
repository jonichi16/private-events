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
    username: "user#{i+1}",
    first_name: "FirstName",
    last_name: "LastName #{i+1}"
  )
  p "User#{i+1} created!"
end

10.times do |i|
  Event.create(
    title: "Event #{i+1} Nunc posuere mauris eu",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum a massa est. Duis sit amet feugiat urna. Quisque at aliquet sapien, at egestas arcu. Nulla egestas ex nibh, eu eleifend ex blandit at. Nullam at condimentum sapien. In hac habitasse platea dictumst. Etiam gravida nisi non volutpat feugiat. Aenean iaculis, ex ac tincidunt dignissim, nisl sem sagittis urna, ac auctor justo justo ut nisl. 
    
    Duis tempus id lacus vitae pretium. Sed ac sem ipsum. Sed enim augue, molestie feugiat lobortis quis, convallis id ante. In vel ante consectetur, fringilla neque vitae, convallis urna. Nam ante diam, consectetur ac lectus sed, vehicula sodales neque. Curabitur id gravida dolor. Donec ut elit augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
    date_of_event: Time.now + rand(-5..10).day,
    location: "Location Here",
    creator_id: rand(0..9)
  )
  p "Event#{i+1} created!"
end
