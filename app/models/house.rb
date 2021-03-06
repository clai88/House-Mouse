class House < ApplicationRecord
  validates :street_address, presence: true, uniqueness: { scope: :zip }, length: { maximum: 95, message: "That address code doesn't look right.  Try a different one" }
  validates :zip, presence: true, numericality: true, length: { maximum: 9, message: "That zip code doesn't look right.  Try a different one" }

  def street_address=(string)
    super(string.downcase.strip)
  end
end
