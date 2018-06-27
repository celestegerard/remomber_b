class Tag < ApplicationRecord
  has_many :memories
  belongs_to :family
end
