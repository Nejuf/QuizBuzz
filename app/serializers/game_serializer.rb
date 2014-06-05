class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :seconds_remaining
end
