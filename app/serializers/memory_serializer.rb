class MemorySerializer < ActiveModel::Serializer
  attributes :id, :timestamp, :title, :body
  belongs_to :member
  belongs_to :tag
end
