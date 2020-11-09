class Movie < ApplicationRecord
  has_many :actors
  validates :title, presence: true
  validates :year, numericality: { only_integer: true }
  validates :plot, length: { minimum: 10, maximum: 250 }
  validates :director, presence: true
end
