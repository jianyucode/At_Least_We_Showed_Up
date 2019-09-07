class Place < ApplicationRecord
  has_one :address, dependent: :destroy
  belongs_to :adventure
end
