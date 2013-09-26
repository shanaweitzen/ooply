collection @@flashcards, root: "flashcards"
attributes :image, :term, :definition



child :category do
	attributes :name
	node(:url) { |category| cateogry_url(category) }
end