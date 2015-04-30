class LocationSerializer < ActiveModel::Serializer
  attributes :name, :parent_id, :created_at, :id

  has_many :children, root: :locations

  def created_at
    object.created_at.to_f * 1000
  end

  def updated_at
    object.updated_at.to_f * 1000
  end
end
