class MoveSerializer < ActiveModel::Serializer
  attributes :id, :letter, :x, :y
  has_one :game
end
