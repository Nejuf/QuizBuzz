class UserSerializer < ApplicationSerializer
  attributes :id, :email

  embed :ids, include: true
  has_many :games #as moderator
  has_many :teams
end
