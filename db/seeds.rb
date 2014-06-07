# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Beginning seed..."

mod = User.create!({email: 'user1@example.com', password: '12341234'})
u2 = User.create!({email: 'user2@example.com', password: '12341234'})
u3 = User.create!({email: 'user3@example.com', password: '12341234'})
u4 = User.create!({email: 'user4@example.com', password: '12341234'})

g1 = Game.create!({name: 'Game1', seconds_remaining: 10, moderator: mod})
g2 = Game.create!({name: 'Game2', seconds_remaining: 100, moderator: mod})
g3 = Game.create!({name: 'Game3', seconds_remaining: 1000, moderator: mod})

t1 = Team.create!({name: 'Team1', users: [u2]})
t2 = Team.create!({name: 'Team1', users: [u3, u4]})

puts "Seeding done."
