class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_name, :dob, :boolean, :username, :password, :family_id
  has_many :memories
  belongs_to :family
end
