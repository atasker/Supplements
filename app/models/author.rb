class Author < ApplicationRecord

	has_many :articles
	has_many :supplements
	#has_many :reviewers, class_name: "Author", foreign_key: "reviewer_id"

	validates :name, presence: true
	validates :title, presence: true
	validates :image, presence: true

end