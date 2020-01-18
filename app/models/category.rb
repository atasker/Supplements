class Category < ApplicationRecord

	extend FriendlyId
  	friendly_id :description

	has_many :supplements, dependent: :destroy
	validates :description, presence: true 

end
