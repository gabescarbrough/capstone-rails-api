class LinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :description, :collection

  has_one :user

  def collection
    object.collection_id
  end
end
