class Movie < ApplicationRecord
	validates :name,  presence: true
  	# validates :year, presence: true
  	validates :rating, presence: true
  	validates :year, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
  	# validates :rating, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
  	# validates_inclusion_of :rating, message: "Only Rate 1 to 5 without sign"

  	belongs_to :user
	has_many :reviews
	has_attached_file :image, styles: { medium: "400x400>", thumb: "300x200>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
