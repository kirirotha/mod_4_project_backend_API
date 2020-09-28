# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Friendship.destroy_all
User.destroy_all

u1 = User.create(username: "Levi", password: "aaa")
u2 = User.create(username: "Sofia", password: "aaa")
u3 = User.create(username: "Kai", password: "aaa")
u4 = User.create(username: "Adrian", password: "aaa")
u5 = User.create(username: "Vonn", password: "aaa")
u6 = User.create(username: "Emma", password: "aaa")
u7 = User.create(username: "Miranda", password: "aaa")
u8 = User.create(username: "Luke", password: "aaa")

f1 = Friendship.create(user1_id: u1.id, user2_id: u2.id, accepted: true, active: true)
f2 = Friendship.create(user1_id: u1.id, user2_id: u3.id, accepted: true, active: true)
f3 = Friendship.create(user1_id: u1.id, user2_id: u4.id, accepted: true, active: true)
f4 = Friendship.create(user1_id: u1.id, user2_id: u5.id, accepted: true, active: true)
f5 = Friendship.create(user1_id: u1.id, user2_id: u6.id, accepted: true, active: true)
f6 = Friendship.create(user1_id: u1.id, user2_id: u7.id, accepted: true, active: true)
f7 = Friendship.create(user1_id: u1.id, user2_id: u8.id, accepted: true, active: true)
f8 = Friendship.create(user1_id: u2.id, user2_id: u3.id, accepted: true, active: true)
f9 = Friendship.create(user1_id: u2.id, user2_id: u4.id, accepted: true, active: true)
f10 = Friendship.create(user1_id: u2.id, user2_id: u5.id, accepted: true, active: true)
f11 = Friendship.create(user1_id: u2.id, user2_id: u6.id, accepted: true, active: true)

g1 = Game.create(user1_id: u1.id, user2_id: u2.id, user1_score: 0, user2_score: 0, user1_bag: 'a_b_c_d_e_f_*', user2_bag: 'a_b_c_d_e_f_*', accepted: true, active: true)
g1 = Game.create(user1_id: u1.id, user2_id: u3.id, user1_score: 130, user2_score: 99, user1_bag: 'a_b_c_d_e_f_*', user2_bag: 'a_b_c_d_e_f_*', accepted: true, active: true)