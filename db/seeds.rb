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


u1 = User.create(username: "Levi", password: "aaa", wins: 12 , losses: 9)
u2 = User.create(username: "Sofia", password: "aaa", wins: 8 , losses: 2)
u3 = User.create(username: "Kai", password: "aaa", wins: 7 , losses: 3)
u4 = User.create(username: "Adrian", password: "aaa", wins: 2 , losses: 1)
u5 = User.create(username: "Vonn", password: "aaa", wins: 2 , losses: 9)
u6 = User.create(username: "Emma", password: "aaa", wins: 4 , losses: 6)
u7 = User.create(username: "Miranda", password: "aaa", wins: 14 , losses: 3)
u8 = User.create(username: "John", password: "aaa", wins: 15 , losses: 5)
u9 = User.create(username: "Jay", password: "aaa", wins: 8 , losses: 3)
u10 = User.create(username: "Jesse", password: "aaa", wins: 15 , losses: 7)
u11 = User.create(username: "Jonathon", password: "aaa", wins: 6 , losses: 5)
u12 = User.create(username: "Jack", password: "aaa", wins: 4 , losses: 4)
u13 = User.create(username: "Karen", password: "aaa", wins: 8 , losses: 7)
u14 = User.create(username: "Kay", password: "aaa", wins: 5 , losses: 4)
u15 = User.create(username: "Kareem", password: "aaa", wins: 6 , losses: 5)
u16 = User.create(username: "Kristen", password: "aaa", wins: 7 , losses: 4)
u17 = User.create(username: "Joe", password: "aaa", wins: 8 , losses: 3)
u18 = User.create(username: "Ed", password: "aaa", wins: 12 , losses: 5)
u19 = User.create(username: "Wilmar", password: "aaa", wins: 17 , losses: 4)
u20 = User.create(username: "Shivang", password: "aaa", wins: 20 , losses: 3)
u21 = User.create(username: "Angelo", password: "aaa", wins: 14 , losses: 6)
u22 = User.create(username: "Scott", password: "aaa", wins: 10 , losses: 9)
u23 = User.create(username: "Yehong", password: "aaa", wins: 13 , losses: 6)
u24 = User.create(username: "Mark", password: "aaa", wins: 9 , losses: 7)
u25 = User.create(username: "Ted", password: "aaa", wins: 15 , losses: 3)
u26 = User.create(username: "Rey", password: "aaa", wins: 11 , losses: 5)
u27= User.create(username: "Trey", password: "aaa", wins: 10 , losses: 6)
u28 = User.create(username: "Beau", password: "aaa", wins: 9 , losses: 7)
u29 = User.create(username: "Josh", password: "aaa", wins: 8 , losses: 9)
u30 = User.create(username: "Sarah", password: "aaa", wins: 7 , losses: 4)



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