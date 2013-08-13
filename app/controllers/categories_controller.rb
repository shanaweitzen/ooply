class CategoriesController < ApplicationController
	def show
		
		
		@category = Category.find_by_name(params[:id])

	
	end

	def index
		@category = Category.all
		
	end
end