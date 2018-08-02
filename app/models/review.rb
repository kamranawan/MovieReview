class Review < ApplicationRecord
	# validates :Rate, length: { in: 1..5 }
  	validates :comment, presence: true

	belongs_to :movie
	belongs_to :user
end
