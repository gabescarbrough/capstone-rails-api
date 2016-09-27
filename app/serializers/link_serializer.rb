class LinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :description, :collection

  def collection
    object.collection_id
  end
end
