class Supplement < ApplicationRecord

	extend FriendlyId
  	friendly_id :name

	# TODO: Add not null constraint to category_id

	belongs_to :category
	validates :name, presence: true

end