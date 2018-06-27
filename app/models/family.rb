class Family < ApplicationRecord
  has_many :members
  has_many :memories, through: :members
end
