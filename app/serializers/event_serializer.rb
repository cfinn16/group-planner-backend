class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :group_id

  has_many :comments
end
