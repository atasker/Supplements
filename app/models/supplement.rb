class Supplement < ApplicationRecord

	extend FriendlyId
  	friendly_id :name

	# TODO: Add not null constraint to category_id

	belongs_to :category
	belongs_to :author
	# TODO: Add reviewer_id to supplements, pointing to author table
	# belongs_to :reviewer, class_name: "Author", foreign_key: :reviewer_id
	validates :name, presence: true

end