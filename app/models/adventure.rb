class Adventure < ApplicationRecord
  has_many :places, dependent: :destroy
end
