class Game
  include Mongoid::Document

  field :name, type: String
  field :seconds_remaining, type: Integer

  validates_presence_of :name

  belongs_to :moderator, class_name: 'User'
  has_and_belongs_to_many :teams
end
