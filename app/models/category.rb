class Category < ApplicationRecord

	extend FriendlyId
  	friendly_id :description

	has_many :supplements, dependent: :destroy
	has_many :articles, dependent: :destroy
	validates :description, presence: true

end
