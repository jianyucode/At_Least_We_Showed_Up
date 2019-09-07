class Place < ApplicationRecord
  belongs_to :address
  belongs_to :adventure
end
