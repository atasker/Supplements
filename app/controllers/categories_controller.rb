class CategoriesController < ApplicationController

	def show
		@category = Category.friendly.find(params[:id])
		@supplements = Supplement.where(category_id: @category.id)
	end

end