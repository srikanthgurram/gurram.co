require 'spec_helper'

describe "Home page" do	
	it "Shoud open Home page" do
		visit root_path
		expect(page).to have_content("Srikanth Gurram")
	end
end