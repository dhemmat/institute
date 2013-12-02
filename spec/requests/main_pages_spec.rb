require 'spec_helper'

describe "MainPages" do

  describe "Home page" do

    it "should have the title 'GDB - Gesti&oacute;n de Devocionales Bah&aacute;'&iacute;s - Inicio'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/main_pages/home'
      expect(page).to have_title("Inicio")
    end

    it "should take me to the homepage when I visit the root url" do
    	visit root_path
    	expect(page).to have_title("Inicio")
    end
  end
end
