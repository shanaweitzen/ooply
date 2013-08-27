class CategoriesController < ApplicationController
	def index
		@category = Category.all

	end

	def show

		@category = Category.find_by_name(CGI::unescape(params[:id]))
	end


end