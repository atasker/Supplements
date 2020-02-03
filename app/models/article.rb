class Article < ApplicationRecord

	extend FriendlyId
  	friendly_id :title

	belongs_to :category
	belongs_to :author
	belongs_to :reviewer

	validates :title, presence: true
	validates :body, presence: true
	validates :lead, presence: true
	validates :image, presence: true
	validates :category_id, presence: true
	validates :slug, presence: true

end
