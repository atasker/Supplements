class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@category = Category.friendly.find(params[:id])
		@supplements = Supplement.where(category_id: @category.id)
	end

end