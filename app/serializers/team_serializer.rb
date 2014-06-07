class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name

  embed :ids, include: true
  has_many :users
  has_many :games
end
