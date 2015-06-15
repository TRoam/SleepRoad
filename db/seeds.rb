# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Seeding"

User.create(name:"tang",gender:"male")
User.create(name:"zhang",gender:"female")
User.create(name:"liu",gender:"male")
User.create(name:"wang",gender:"male")
User.create(name:"li",gender:"female")


Relationship.create(follower_id:1,followed_id:2)
Relationship.create(follower_id:2,followed_id:3)
Relationship.create(follower_id:1,followed_id:3)
Relationship.create(follower_id:1,followed_id:4)
Relationship.create(follower_id:3,followed_id:4)







