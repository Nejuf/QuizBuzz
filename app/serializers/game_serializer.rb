class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :seconds_remaining

  embed :ids, include: true
  has_one :moderator, root: :users
  has_many :teams
end
