class Category < ApplicationRecord

	extend FriendlyId
  	friendly_id :description

	has_many :supplements
	has_many :articles
	validates :description, presence: true

end
