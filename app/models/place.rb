class Place < ApplicationRecord
  has_one :address
  belongs_to :adventure
end
