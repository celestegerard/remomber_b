class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_name, :dob, :username, :password, :family_id, :memories
  # has_many :memories
  belongs_to :family
end
