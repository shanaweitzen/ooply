class CategoriesController < ApplicationController
	def index
		@category = Category.all

	end

	def show

		@category = Category.find_by_name(CGI::unescape(params[:id]))
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
	end

	def update
	end

	# def update
	# 	@category = Category.find_by_name "rails-directory/structure"
	# end

private
	def category_params
	end
end