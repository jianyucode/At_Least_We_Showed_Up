class Place < ApplicationRecord
  has_many :addresses, dependent: :destroy
  belongs_to :adventure
end
