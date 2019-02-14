require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  User.create(
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email
  )
end

User.create(name: 'Connor Finnegan', email: 'fakeconnor@gmail.com')
User.create(name: 'John Martinez', email: 'fakejohn@gmail.com')

Group.create(name: 'College Friends')
Group.create(name: 'Flatiron Project Group')
Group.create(name: 'Roommates')
Group.create(name: 'Dungeons & Dragons')
Group.create(name: 'Book Club')
Group.create(name: 'Dinners')
Group.create(name: 'Programmers in Coffee Shops Getting Coffee')


25.times do
  UserGroup.create(
    user_id: rand(1..50),
    group_id: rand(1..7)
  )
end

UserGroup.create( user_id: 51, group_id: 1)
UserGroup.create( user_id: 51, group_id: 2)
UserGroup.create( user_id: 51, group_id: 3)
UserGroup.create( user_id: 51, group_id: 4)
UserGroup.create( user_id: 51, group_id: 5)
UserGroup.create( user_id: 51, group_id: 6)
UserGroup.create( user_id: 51, group_id: 7)


UserGroup.create( user_id: 52, group_id: 2)
UserGroup.create( user_id: 52, group_id: 4)
UserGroup.create( user_id: 52, group_id: 5)
UserGroup.create( user_id: 52, group_id: 6)
UserGroup.create( user_id: 52, group_id: 7)
