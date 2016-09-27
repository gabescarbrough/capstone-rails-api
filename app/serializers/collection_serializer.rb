class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :description, :links

  def links
    object.links.pluck(:id)
  end
end
