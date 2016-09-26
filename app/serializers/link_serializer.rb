class LinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :description
end
