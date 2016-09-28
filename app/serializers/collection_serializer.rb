class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :links, :created_at, :updated_at

  has_one :user

  def links
    object.links.pluck(:id)
  end
end
