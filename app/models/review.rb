class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: (0..5) }
end

# greater_than_or_equal_to: 0, less_than_or_equal_to: 5
