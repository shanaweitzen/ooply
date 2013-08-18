class CategoriesController < ApplicationController
	def show
		@category = Category.find_by_name(CGI::unescape(params[:id]))
	end

	def index
		@category = Category.all
	end
end