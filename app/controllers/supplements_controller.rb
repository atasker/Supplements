class SupplementsController < ApplicationController

	def index
		@supplements = Supplement.all
		@categories = Category.all
	end

	def show
		@supplement = Supplement.friendly.find(params[:id])
		@category = Category.find(@supplement.category_id)
	end

end
