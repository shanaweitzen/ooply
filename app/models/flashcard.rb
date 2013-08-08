class Flashcard 
	include MongoMapper::Document
	
	
	belongs_to :category

	key :term, 			String
	key :definition, 	String
	

end


