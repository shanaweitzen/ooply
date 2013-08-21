class Flashcard 
	include MongoMapper::Document
	
	
	key :image,          String
	key :term, 			String
	key :definition, 	String
	

end


