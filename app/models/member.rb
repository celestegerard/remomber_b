class Member < ApplicationRecord
  has_many :memories
  belongs_to :tag
end
