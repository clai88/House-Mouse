class House < ApplicationRecord
  validates :street_address, presence: true
  validates :zip, presence: true
end