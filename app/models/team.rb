class Team
  include Mongoid::Document

  field :name, type: String, default: "team"

  validates_presence_of :name

  has_and_belongs_to_many :users
  has_and_belongs_to_many :games
end
