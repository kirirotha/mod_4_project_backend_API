class GameSerializer < ActiveModel::Serializer
  attributes :id, :user1_id, :user2_id, :user1_score, :user2_score, :user1_bag, :user2_bag, :accepted, :active, :player1turn
end
