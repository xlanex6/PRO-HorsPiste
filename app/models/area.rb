class Area < ApplicationRecord
  belongs_to :resort
  has_many :runs
end
