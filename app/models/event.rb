class Event < ApplicationRecord
  belongs_to :group
  has_many :comments

  has_many :users, through: :groups
end
