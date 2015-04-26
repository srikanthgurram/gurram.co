require 'rails_helper'

RSpec.describe HomeController, type: :controller do
	describe "Home :: " do
		it "get #index" do
			get :index
			expect(response).to render_template('index')
			expect(response).to be_success			
		end
	end
end
