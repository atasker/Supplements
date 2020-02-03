class Author < ApplicationRecord

	has_many :articles
	has_many :supplements

	validates :name, presence: true
	validates :title, presence: true
	validates :image, presence: true
	validates :bio, presence: true

end
