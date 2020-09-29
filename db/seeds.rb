# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Move.destroy_all
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

g1 = Game.create(user1_id: u1.id, user2_id: u2.id, user1_score: 0, user2_score: 0, user1_bag: 'A_B_C_D_E_F_*', user2_bag: 'R_S_T_U_V_W_X', accepted: true, active: true, player1turn: true)
g2 = Game.create(user1_id: u1.id, user2_id: u3.id, user1_score: 130, user2_score: 99, user1_bag: 'A_B_C_D_E_F_*', user2_bag: 'R_S_T_U_V_W_X', accepted: true, active: true, player1turn: false)

m1 = Move.create(game_id: g1.id, letter: 'H', x: 6, y: 7)
m2 = Move.create(game_id: g1.id, letter: 'O', x: 7, y: 7)
m3 = Move.create(game_id: g1.id, letter: 'M', x: 8, y: 7)
m4 = Move.create(game_id: g1.id, letter: 'E', x: 9, y: 7)
m5 = Move.create(game_id: g2.id, letter: 'E', x: 9, y: 7)