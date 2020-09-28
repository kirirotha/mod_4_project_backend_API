class GameSerializer < ActiveModel::Serializer
  attributes :id, :user1, :user2, :user1_score, :user2_score
end
