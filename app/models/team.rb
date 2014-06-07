class Team
  include Mongoid::Document

  field :name, type: String, default: "team"

  has_and_belongs_to_many :users
end