class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :users

  has_many :users
  has_many :events


end
