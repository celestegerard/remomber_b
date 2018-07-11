class MemorySerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  # belongs_to :member
end
