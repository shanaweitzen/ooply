class CategoriesController < ApplicationController
	def show
		# params[:id]
		
		@flashcards = Category.where(:name => params[:name]).first.flashcards


		# @flashcard = Flashcard.all 
		# @flashcard = find_by(category_id)
		# @flashcard

	end

	def index
		@category = Category.all
		
	end
end