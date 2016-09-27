class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :links

  def links
    object.links.pluck(:id)
  end
end
