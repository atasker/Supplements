class Author < ApplicationRecord

	has_many :articles

	validates :name, presence: true
	validates :title, presence: true
	validates :image, presence: true

end
