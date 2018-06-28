class FamilySerializer < ActiveModel::Serializer
  attributes :id, :last_name
  has_many :members
  has_many :memories, through: :members
end
