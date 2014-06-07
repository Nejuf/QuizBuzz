class UserSerializer < ApplicationSerializer
  attributes :id, :email

  embed :ids, include: true

  has_many :games
  has_many :teams
end
