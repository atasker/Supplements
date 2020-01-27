class Article < ApplicationRecord

	extend FriendlyId
  	friendly_id :title

	belongs_to :category

end
