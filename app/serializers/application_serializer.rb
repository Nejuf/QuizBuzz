class ApplicationSerializer < ActiveModel::Serializer

  # Use mongoid's _id as id
  def id
    object._id.to_s
  end
end