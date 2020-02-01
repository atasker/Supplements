class Supplement < ApplicationRecord

	extend FriendlyId
  	friendly_id :name

	# TODO: Add not null constraint to category_id

	belongs_to :category
	belongs_to :author
	#belongs_to :reviewer, class_name: 'Author', foreign_key: :reviewer_id
	validates :name, presence: true

end