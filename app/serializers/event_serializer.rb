class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category

  has_many :comments
end
