class Movie < ApplicationRecord
  belongs_to :production_company
  validates :title, :year, :duration, :description, :average_vote, presence: true
end
