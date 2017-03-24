class Resort < ApplicationRecord
  belongs_to :country
  has_many :areas
end
