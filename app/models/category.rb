class Category
	include MongoMapper::Document
	many :flashcards

	key :name, String
	
end


