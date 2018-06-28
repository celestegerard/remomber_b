class MemberSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_name, :dob, :is_account, :username, :password, :family_id
  has_many :memories
  belongs_to :family
end
