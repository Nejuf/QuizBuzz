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
u5 = User.create!({email: 'user5@example.com', password: '12341234'})
u6 = User.create!({email: 'user6@example.com', password: '12341234'})

g1 = Game.create!({name: 'Med-High vs. Sci-Tech', seconds_remaining: 10, moderator: mod})
g2 = Game.create!({name: 'Penn State Tournament: Round 4', seconds_remaining: 100, moderator: mod})
g3 = Game.create!({name: 'Exhibition', seconds_remaining: 1000, moderator: mod})
g4 = Game.create!({name: 'Penn State Tournament: Round 3', seconds_remaining: 0, moderator: mod})


t1 = Team.create!({name: 'Med-High', users: [u2], games: [g1, g3]})
t2 = Team.create!({name: 'Sci-Tech', users: [u3, u4], games: [g1]})
t3 = Team.create!({name: 'Free Sign Up', users: [u4], games: [g3]})
t4 = Team.create!({name: 'PSU', users: [u5], games: [g2, g4]})
t5 = Team.create!({name: 'PS-Behrend', users: [u6], games: [g2]})
t6 = Team.create!({name: 'UAT', users: [], games: [g4]})

puts "Seeding done."
