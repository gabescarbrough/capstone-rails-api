class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :links

  has_one :user

  def links
    object.links.pluck(:id)
  end
end
