class Member < ApplicationRecord
  has_many :memories
  belongs_to :family
  has_secure_password
end
