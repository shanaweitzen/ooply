require 'spec_helper'

describe CategoriesController do 
	describe "GET show" do 
	it "renders @category" do
		get :show, id: 1
		expect(response).to render_template("show")
	end
end

	it "returns only one term in the @category" do

end
		
end
 #ends describe CategoriesController
